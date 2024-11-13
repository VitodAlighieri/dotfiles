return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
		local formatting = null_ls.builtins.formatting
		local diagnostics = null_ls.builtins.diagnostics

		local sources = {
			formatting.prettier.with({ filetypes = { "html", "json", "yaml", "markdown" } }),
			diagnostics.mypy,
			formatting.black,
			formatting.stylua,
			formatting.shfmt.with({ args = { "-i", "4" } }),
		}

		local on_attach = function(client, bufnr)
			if client.supports_method("textDocument/formatting") then
				vim.api.nvim_clear_autocmds({
					group = augroup,
					buffer = bufnr,
				})
				vim.api.nvim_create_autocmd("BufWritePre", {
					group = augroup,
					buffer = bufnr,
					callback = function()
						vim.lsp.buf.format({ bufnr = bufnr })
					end,
				})
			end
		end

		null_ls.setup({
			sources = sources,
			on_attach = on_attach,
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}

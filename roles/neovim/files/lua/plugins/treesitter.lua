return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = { "lua", "python", "c_sharp", "java" },
			highlight = { enable = true },
			indent = { enable = true },
			auto_install = true,
			sync_install = true,
			ignore_install = { },
			modules = { }
		})
	end,
}

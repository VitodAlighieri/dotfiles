local plugins = {
    -- format & linting
   {
     "jose-elias-alvarez/null-ls.nvim",
     after = "nvim-lspconfig",
     config = function()
        require "custom.configs.null-ls"
     end,
   },
 
   {
     "Pocco81/AutoSave.nvim",
     module = "autosave",
     lazy = false,
     config = function()
       require("custom.configs.autosave").autosave()
     end,
    },
 
    {
      'goolord/alpha-nvim',
      config = function ()
          require'alpha'.setup(require'alpha.themes.dashboard'.config)
      end
    },
    
   {
     "neovim/nvim-lspconfig",
     config = function()
       require "plugins.configs.lspconfig"
       require "custom.configs.lspconfig"
     end,
   },
 
   {
     "williamboman/mason.nvim",
     opts = {
       ensure_installed = {
         -- lua stuff
         "lua-language-server",
         "stylua",
 
         -- web dev
         "css-lsp",
         "html-lsp",
         "typescript-language-server",
         "emmet-ls",
         "json-lsp",
         "prettier",
         "eslint-lsp",
 
         -- shell
         "bash-language-server",
         "shfmt",
         "shellcheck",
 
         -- python
         "pyright",
 
         -- ansible
         "ansible-language-server",
       },
     },
   },
 }
 
 return plugins

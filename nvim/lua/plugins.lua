return {
  'nvim-lua/plenary.nvim',
  { 'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  {
    'nvim-telescope/telescope.nvim', branch = '0.1.x', dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "c", "lua", "javascript", "html" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end
  },
}


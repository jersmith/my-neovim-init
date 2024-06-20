require("settings")
require("keymaps")
require("setup-lazy")

-- loads the plugins
require("lazy").setup("plugins")

-- initialize the plugins (that need it)
require("lualine").setup {
  options = {
    theme = 'tokyonight'
  }
}

-- setup telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- color scheme
vim.cmd[[colorscheme tokyonight]]


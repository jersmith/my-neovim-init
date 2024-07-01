require('settings')
require('keymaps')
require('setup-lazy')

-- loads the plugins
require('lazy').setup({
  spec = {
    import = 'plugins'
  },
  rocks = { enabled = false }
})

-- initialize the plugins (that need it)
require('lualine').setup {
  options = {
    theme = 'tokyonight'
  }
}

-- color scheme
vim.cmd[[colorscheme tokyonight]]

-- setup telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- function to allow multi-selection in the telescope picker
local select_one_or_multi = function(prompt_bufnr)
  local picker = require('telescope.actions.state').get_current_picker(prompt_bufnr)
  local multi = picker:get_multi_selection()
  if not vim.tbl_isempty(multi) then
    require('telescope.actions').close(prompt_bufnr)
    for _, j in pairs(multi) do
      if j.path ~= nil then
        vim.cmd(string.format('%s %s', 'edit', j.path))
      end
    end
  else
    require('telescope.actions').select_default(prompt_bufnr)
  end
end

-- the keybinding for telescope selection in the picker
require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ['<CR>'] = select_one_or_multi,
      }
    }
  }
}

require('rel-num')

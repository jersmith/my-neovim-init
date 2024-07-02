-- Clear highlights
vim.keymap.set('n', '<CR>', ':noh<CR>')

-- Tree
vim.keymap.set('n', '<leader>tt', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<leader>ts', ':NvimTreeFocus<CR>')
vim.keymap.set('n', '<leader>tf', ':NvimTreeFindFile<CR>')
vim.keymap.set('n', '<leader>tc', ':NvimTreeCollapse<CR>')

-- Git
vim.keymap.set('n', '<leader>gs', ':Neogit<CR>')

-- Toggle buffer
vim.keymap.set('n', '<C-e>', ':b#<CR>')

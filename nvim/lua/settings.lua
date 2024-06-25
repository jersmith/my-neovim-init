local opt = vim.opt

opt.cursorline = true
opt.number = true
opt.termguicolors = true
opt.expandtab = true
opt.smartindent = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.listchars = { trail = '.', tab = '>~' }
opt.list = true

-- disable netrw 
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

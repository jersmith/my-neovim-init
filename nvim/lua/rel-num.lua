-- This is an example of using auto-commands in Lua

local rel_num_group = 
  vim.api.nvim_create_augroup("insert_event", { clear = true })

-- Turn off relative numbers when entering Insert mode
vim.api.nvim_create_autocmd("InsertEnter", {
  group = rel_num_group,
  callback = function()
    vim.opt.relativenumber = false
  end
})

-- Turn on relative numbers when leaving Insert mode
vim.api.nvim_create_autocmd("InsertLeave", {
  group = rel_num_group,
  callback = function()
    vim.opt.relativenumber = true
  end
})

-- Turn on relative numbers when entering a window
-- This only works because we always enter in normal mode
vim.api.nvim_create_autocmd("BufWinEnter", {
  group = rel_num_group,
  callback = function()
    vim.opt.relativenumber = true
  end
})

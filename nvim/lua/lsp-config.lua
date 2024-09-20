if vim.fn.executable('lua-language-server') == 1 then
  require('lspconfig').lua_ls.setup({
    settings = {
      Lua = {
        diagnostics = {
          -- Get the language server to recognize the `vim` global
          globals = {'vim'},
        },
        runtime = {
          version = 'LuaJIT'
        }
      },
    },
  })
end

if vim.fn.executable('typescript-language-server') == 1 then
  require('lspconfig').ts_ls.setup({
  })
end

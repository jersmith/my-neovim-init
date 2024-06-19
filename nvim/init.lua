require("settings")
require("keymaps")
require("setup-lazy")

require("lazy").setup({
    "askfiy/visual_studio_code",
    priority = 100,
    config = function()
        vim.cmd([[colorscheme visual_studio_code]])
    end,
})

require("visual_studio_code").setup()

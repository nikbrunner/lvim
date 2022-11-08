vim.opt.relativenumber = true
vim.opt.timeoutlen = 100
vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 10
vim.opt.scrolloff = 12
vim.opt.sidescrolloff = 24

-- Lvim
lvim.log.level = "warn"
lvim.format_on_save.enabled = true
lvim.colorscheme = "lunar"
lvim.transparent_window = false

-- Formatters
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
    {
        command = "prettier",
        ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
        filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact", "jsonc", "json" },
    },
    {
        command = "stylua",
    },
})

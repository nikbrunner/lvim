-- Formatters
--Documentation: https://www.lunarvim.org/docs/languages#multi-languages-per-linterformatter
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

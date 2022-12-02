--Documentation: https://www.lunarvim.org/docs/languages#multi-languages-per-linterformatter
local code_actions = require("lvim.lsp.null-ls.code_actions")
code_actions.setup({
    {
        name = "eslint",
    },
})

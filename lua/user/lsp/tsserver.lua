-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#tsserver
require("lvim.lsp.manager").setup("tsserver", {
    cmd = { "typescript-language-server", "--stdio" },
    filetypes = {
        "javascript",
        "javascriptreact",
        "javascript.jsx",
        "typescript",
        "typescriptreact",
        "typescript.tsx",
    },
    init_options = {
        enable = true,
        lint = true,
        hostInfo = "neovim",
        unstable = false,
    },
    -- only look for package.json to differentiate from deno repository
    root_dir = require("lspconfig").util.root_pattern("package.json"),
})

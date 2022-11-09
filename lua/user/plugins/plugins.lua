lvim.plugins = {
    { "~/Documents/dev/repos/personal/terra-theme/terra.nvim" },
    -- { "~/Documents/dev/repos/personal/terra-theme/nvim" },
    { "ThePrimeagen/harpoon" },
    { "b0o/incline.nvim" },
    { "folke/trouble.nvim", cmd = "TroubleToggle" },
    { "folke/zen-mode.nvim" },
    {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
    },
    { "uga-rosa/ccc.nvim" },
    { "kazhala/close-buffers.nvim" },
    {
        "anuvyklack/pretty-fold.nvim",
        requires = {
            {
                "anuvyklack/fold-preview.nvim",
            },
            {
                "anuvyklack/keymap-amend.nvim",
            },
        },
    },
    {
        "kylechui/nvim-surround",
        tag = "*",
    },
    {
        "windwp/nvim-ts-autotag",
        requires = "nvim-treesitter/nvim-treesitter",
        after = "nvim-treesitter",
    },
    {
        "nvim-treesitter/playground",
        requires = "nvim-treesitter/nvim-treesitter",
        after = "nvim-treesitter",
        run = ":TSInstall query",
    },
}

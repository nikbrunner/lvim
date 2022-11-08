lvim.plugins = {
    { "~/Documents/dev/repos/personal/terra-theme/terra.nvim" },
    { "folke/trouble.nvim", cmd = "TroubleToggle" },
    { "ThePrimeagen/harpoon" },
    { "folke/zen-mode.nvim" },
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
    {
        "b0o/incline.nvim",
    },
}

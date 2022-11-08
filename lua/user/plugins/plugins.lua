lvim.plugins = {
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
}
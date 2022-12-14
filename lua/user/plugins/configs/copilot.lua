local present, copilot = pcall(require, "copilot")
if not present then
    return
end

-- FIX: These setup settings seem to do not get respected
copilot.setup({
    plugin_manager_path = get_runtime_dir() .. "/site/pack/packer",
    cmp = {
        enabled = true,
        method = "getCompletionsCycling",
    },
    panel = {
        enabled = false,
        auto_refresh = false,
        keymap = {
            jump_prev = "[[",
            jump_next = "]]",
            accept = "<CR>",
            refresh = "gr",
            open = "<M-y>",
        },
    },
    suggestion = {
        enabled = true,
        auto_trigger = true,
        debounce = 75,
        keymap = {
            accept = "<C-f>",
            next = "<M-]>",
            prev = "<M-[>",
            dismiss = "<C-]>",
        },
    },
    filetypes = {
        yaml = false,
        markdown = false,
        help = false,
        gitcommit = false,
        gitrebase = false,
        hgcommit = false,
        svn = false,
        cvs = false,
        ["."] = false,
    },
    copilot_node_command = "node", -- Node.js version must be > 16.x
    server_opts_overrides = {},
})

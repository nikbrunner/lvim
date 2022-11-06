local cmd = require("user.cmd")
local groups = require("user.maps.groups")

----------------------------------------------------------- No Leader
lvim.keys.normal_mode["<CR>"] = ":w<cr>"
lvim.keys.normal_mode["<S-l>"] = "$"
lvim.keys.normal_mode["<S-h>"] = "^"
lvim.keys.normal_mode["vv"] = ":norm ^v$<CR>"

-- Better n and N (Keep Search Hit in the middle)
lvim.keys.normal_mode["n"] = "nzzzv"
lvim.keys.normal_mode["N"] = "Nzzzv"

lvim.keys.normal_mode["dd"] = cmd.edit.smart_dd()

lvim.keys.normal_mode["<M-h>"] = ":bprevious<CR>"
lvim.keys.normal_mode["<M-l>"] = ":bnext<CR>"

-- g..
lvim.lsp.buffer_mappings.normal_mode["gd"] = {
    "<cmd>Trouble lsp_definitions<CR>",
    "LSP Definitons",
}
lvim.lsp.buffer_mappings.normal_mode["gr"] = {
    "<cmd>Trouble lsp_references<CR>",
    "LSP References",
}

-- Function Keys
lvim.keys.normal_mode["<F7>"] = "<cmd>CccPick<CR>"
lvim.keys.normal_mode["<F8>"] = ":call QuickFixToggle()<CR>"
lvim.keys.normal_mode["<F9>"] = "<cmd>TroubleToggle<CR>"

----------------------------------------------------------- With Leader
lvim.leader = "space"

-- Disable
lvim.builtin.which_key.mappings["w"] = {}

-- Singles
lvim.builtin.which_key.mappings["n"] = { ":nohl<CR>", WhichKeyIgnoreLabel }
lvim.builtin.which_key.mappings["z"] = { "<cmd>ZenMode<CR>", "Zen" }
lvim.builtin.which_key.mappings["F"] = { cmd.telescope.find_files_with_preview, "Find Files with Preview" }
lvim.builtin.which_key.mappings["/"] = { cmd.telescope.find_in_file, "Find Text in File" }
lvim.builtin.which_key.mappings[" "] = { cmd.telescope.find_open_buffer, "Open Buffers" }

-- Groups
lvim.builtin.which_key.mappings.t = groups.tabs
lvim.builtin.which_key.mappings.l = groups.lsp
lvim.builtin.which_key.mappings.m = groups.marks
lvim.builtin.which_key.mappings.g = groups.git
lvim.builtin.which_key.mappings.s = groups.search
lvim.builtin.which_key.mappings.i = groups.insert
lvim.builtin.which_key.mappings.T = groups.terra
lvim.builtin.which_key.mappings["Lt"] = { ":TSConfigInfo<CR>", "Treesitter Info" }

-- Tabs
lvim.builtin.which_key.mappings["1"] = { "1gt", WhichKeyIgnoreLabel }
lvim.builtin.which_key.mappings["2"] = { "2gt", WhichKeyIgnoreLabel }
lvim.builtin.which_key.mappings["3"] = { "3gt", WhichKeyIgnoreLabel }
lvim.builtin.which_key.mappings["4"] = { "4gt", WhichKeyIgnoreLabel }
lvim.builtin.which_key.mappings["5"] = { "5gt", WhichKeyIgnoreLabel }
lvim.builtin.which_key.mappings["6"] = { "6gt", WhichKeyIgnoreLabel }
lvim.builtin.which_key.mappings["7"] = { "7gt", WhichKeyIgnoreLabel }
lvim.builtin.which_key.mappings["8"] = { "8gt", WhichKeyIgnoreLabel }
lvim.builtin.which_key.mappings["9"] = { "9gt", WhichKeyIgnoreLabel }

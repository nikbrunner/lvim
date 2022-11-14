local cmd = require("user.cmd")
local groups = require("user.maps.groups")

----------------------------------------------------------- No Leader
local n_map = lvim.keys.normal_mode

n_map["<CR>"] = ":w<cr>"
n_map["<S-l>"] = ":tabnext<CR>"
n_map["<S-h>"] = ":tabprev<CR>"
n_map["vv"] = ":norm ^v$<CR>"
n_map["n"] = "nzzzv"
n_map["N"] = "Nzzzv"
n_map["<M-h>"] = ":bprevious<CR>"
n_map["<M-l>"] = ":bnext<CR>"
n_map["<C-f>"] = cmd.nav.pick_window

-- Function Keys
n_map["<F7>"] = "<cmd>CccPick<CR>"
n_map["<F8>"] = ":call QuickFixToggle()<CR>"
n_map["<F9>"] = "<cmd>TroubleToggle<CR>"

-- Buffer Maps
local n_buffer_map = lvim.lsp.buffer_mappings.normal_mode

n_buffer_map["gd"] = { "<cmd>Trouble lsp_definitions<CR>", "LSP Definitons" }
n_buffer_map["gr"] = { "<cmd>Trouble lsp_references<CR>", "LSP References" }

----------------------------------------------------------- With Leader
lvim.leader = "space"

local wk = lvim.builtin.which_key

-- Disable
wk.mappings["w"] = {}

-- Singles
wk.mappings["n"] = { ":nohl<CR>", WhichKeyIgnoreLabel }
wk.mappings["z"] = { "<cmd>ZenMode<CR>", "Zen" }
wk.mappings["f"] = { cmd.fzflua.find_files_without_preview, "Find Files" }
wk.mappings["F"] = { cmd.telescope.find_files_with_preview, "Find Files with Preview" }
wk.mappings["/"] = { cmd.telescope.find_in_file, "Find Text in File" }
wk.mappings[" "] = { cmd.telescope.find_open_buffer, "Open Buffers" }

-- Groups
wk.mappings.t = groups.tabs
wk.mappings.l = groups.lsp
wk.mappings.m = groups.marks
wk.mappings.g = groups.git
wk.mappings.s = groups.search
wk.mappings.i = groups.insert
wk.mappings.q = groups.quit
wk.mappings.c = groups.copy
wk.mappings.T = groups.terra
wk.mappings["Lt"] = { ":TSConfigInfo<CR>", "Treesitter Info" }

-- Tabs
wk.mappings["1"] = { "1gt", WhichKeyIgnoreLabel }
wk.mappings["2"] = { "2gt", WhichKeyIgnoreLabel }
wk.mappings["3"] = { "3gt", WhichKeyIgnoreLabel }
wk.mappings["4"] = { "4gt", WhichKeyIgnoreLabel }
wk.mappings["5"] = { "5gt", WhichKeyIgnoreLabel }
wk.mappings["6"] = { "6gt", WhichKeyIgnoreLabel }
wk.mappings["7"] = { "7gt", WhichKeyIgnoreLabel }
wk.mappings["8"] = { "8gt", WhichKeyIgnoreLabel }
wk.mappings["9"] = { "9gt", WhichKeyIgnoreLabel }

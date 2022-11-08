local present, incline = pcall(require, "incline")
if not present then
    return
end

incline.setup({
    render = function(props)
        local bufname = vim.api.nvim_buf_get_name(props.buf)
        if bufname == "" then
            return "[No name]"
        else
            return vim.fn.fnamemodify(bufname, ":.")
        end
    end,

    debounce_threshold = {
        falling = 50,
        rising = 10,
    },
    hide = {
        cursorline = false,
        focused_win = false,
        only_win = false,
    },
    highlight = {
        groups = {
            InclineNormal = {
                default = true,
                group = "NormalFloat",
            },
            InclineNormalNC = {
                default = true,
                group = "NormalFloat",
            },
        },
    },
    ignore = {
        buftypes = "special",
        filetypes = {},
        floating_wins = true,
        unlisted_buffers = true,
        wintypes = "special",
    },
    window = {
        margin = {
            horizontal = 0,
            vertical = 1,
        },
        options = {
            signcolumn = "no",
            wrap = false,
        },
        padding = 1,
        padding_char = " ",
        placement = {
            vertical = "top",
            horizontal = "left",
        },
        -- width = "fit",
        width = "fill",
        winhighlight = {
            active = {
                EndOfBuffer = "None",
                Normal = "BufferVisibleMod",
                Search = "None",
            },
            inactive = {
                EndOfBuffer = "None",
                Normal = "BufferInactive",
                Search = "None",
            },
        },
        zindex = 50,
    },
})

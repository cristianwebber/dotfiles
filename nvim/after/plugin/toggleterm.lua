require('toggleterm').setup {
    active = true,
    on_config_done = nil,
    size = 20,
    open_mapping = [[<c-\>]],
    hide_numbers = true,
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = 2,
    start_in_insert = true,
    insert_mappings = true,
    persist_size = false,
    direction = "float",
    close_on_exit = true,
    shell = nil,
    float_opts = {
        border = "curved",
        winblend = 0,
        highlights = {
            border = "Normal",
            background = "Normal",
        },
    },
    execs = {
        { nil, "<M-1>", "Horizontal Terminal", "horizontal", 0.3 },
        { nil, "<M-2>", "Vertical Terminal",   "vertical",   0.4 },
        { nil, "<M-3>", "Float Terminal",      "float",      nil },
    },
}

---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<A-j>"] = {": .m+1<CR>==", "move line below"},
    ["<A-k>"] = {": .m-2<CR>==", "move line above"},
    ["<leader>fg"] = {"<cmd>Telescope live_grep<cr>", "Live grep"},
    ["<leader>o"] = {"o<Esc>", "new line below"},
    ["<leader>O"] = {"O<Esc>", "new line below"},
    ["<C-q>"] = {
      function()
        require("nvchad_ui.tabufline").close_buffer()
      end
      , "close buffer"},
    ["<C-e>"] = {"<cmd>Telescope find_files<cr>", "find files"}
  },

  i = {
    ["<A-j>"] = {"<Esc>: .m+1<CR>==gi", "move line below"},
    ["<A-k>"] = {"<Esc>: .m-2<CR>==gi", "move line above"},
  },

  v = {
    ["<A-k>"] = {": .m-2<CR>gv==gv", "move line above"},
    ["<A-j>"] = {": .m+1<CR>gv==gv", "move line below"},
  }
}

return M

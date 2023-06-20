local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  {
    "numToStr/Comment.nvim",
    lazy=false,
    config=function()
      require("Comment").setup({
        toggler = { line = "<C-_>" },
        opleader = { line = "<C-_>" }
      })
    end,
  },

  {
    "akinsho/toggleterm.nvim",
    lazy=false,
    version = "*",
    config=function()
      require("toggleterm").setup({
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
      })
    end,
  }

}

return plugins

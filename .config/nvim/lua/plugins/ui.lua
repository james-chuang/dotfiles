return {

  {
    -- Statusline
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        icons_enabled = false,
        theme = "base16", -- Use colors defined by nvim-base16: https://github.com/nvim-lualine/lualine.nvim/blob/master/THEMES.md#base16
        component_separators = "|",
        section_separators = { left = "", right = "" },
      },
    },
  },

  {
    -- Show pending keybinds
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      -- timeoutlen determines pop-up delay, and is set in config/global.lua
    },
  },

  {
    -- Add indentation guides, even on blank lines
    "lukas-reineke/indent-blankline.nvim",
    main = 'ibl',
    opts = {},
  },

  {
    -- Seamless navigation among vim and tmux panes
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
    keys = {
      { "<c-h>",  "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>",  "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>",  "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>",  "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    }
  },
}

return {
  -- Rust Tools
  {
    'simrat39/rust-tools.nvim',
    config = function()
      require('rust-tools').setup {}
    end,
  },

  {
    'stevearc/dressing.nvim',
    opts = {},
    config = function()
      require('dressing').setup {}
    end,
  },

  -- Flutter Tools
  {
    'akinsho/flutter-tools.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim',
    },
    config = function()
      require('flutter-tools').setup {}
    end,
  },

  {
    'nvim-lualine/lualine.nvim',
    config = function()
      require('lualine').setup {
        options = {
          theme = 'tokyonight',
        },
      }
    end,
  },
}


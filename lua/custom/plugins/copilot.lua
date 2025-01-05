return {
  -- Copilot setup
  -- https://github.com/MariaSolOs/dotfiles/blob/e9eb1f8e027840f872e69e00e082e2be10237499/.config/nvim/lua/plugins/copilot.lua
  {
    'zbirenbaum/copilot.lua',
    event = 'InsertEnter',
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {
          accept = false,
        },
      },
      panel = { enabled = false },
    },

    config = function(_, opts)
      require('copilot').setup(opts) -- Use the opts from Lazy.nvim to configure Copilot
      -- vim.api.nvim_set_keymap('n', '<C-c>', ':Copilot<CR>', { noremap = true, silent = true }) -- Keybinding for toggling Copilo
    end,
  },

  -- Copilot CMP setup for autocompletion integration
  {
    'zbirenbaum/copilot-cmp',
    after = { 'copilot.lua' }, -- Ensure copilot.lua is loaded first
    config = function()
      require('copilot_cmp').setup()
    end,
  },
}

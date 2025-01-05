return {

  {
    'AckslD/nvim-neoclip.lua',
    dependencies = {
      { 'kkharji/sqlite.lua', module = 'sqlite' },
      -- you'll need at least one of these
      { 'nvim-telescope/telescope.nvim' },
      -- {'ibhagwan/fzf-lua'},
    },
    config = function()
      require('neoclip').setup()
      vim.api.nvim_set_keymap('n', '<leader>y', '<cmd>Telescope neoclip<CR>', { noremap = true, silent = true })
    end,
  },
}

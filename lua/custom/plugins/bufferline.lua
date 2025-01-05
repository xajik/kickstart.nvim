return {
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'tnvim-tree/nvim-web-devicons',
    config = function()
      require('bufferline').setup {
        options = {
          view = 'multiwindow',
          numbers = 'ordinal',
          number_style = 'superscript',
          mappings = true,
          close_command = 'bdelete! %d',
          right_mouse_command = 'bdelete! %d',
          left_mouse_command = 'buffer %d',
          offsets = {
            { filetype = 'NvimTree', text = 'File Explorer', text_align = 'left', separator = true },
          },
          vim.api.nvim_set_keymap('n', '<Tab>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true }),
          vim.api.nvim_set_keymap('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true }),
          vim.api.nvim_set_keymap('n', '<leader>1', ':BufferLineGoToBuffer 1<CR>', { noremap = true, silent = true }),
          vim.api.nvim_set_keymap('n', '<leader>2', ':BufferLineGoToBuffer 2<CR>', { noremap = true, silent = true }),
          vim.api.nvim_set_keymap('n', '<leader>3', ':BufferLineGoToBuffer 3<CR>', { noremap = true, silent = true }),
          vim.api.nvim_set_keymap('n', '<leader>4', ':BufferLineGoToBuffer 4<CR>', { noremap = true, silent = true }),
          vim.api.nvim_set_keymap('n', '<leader>5', ':BufferLineGoToBuffer 5<CR>', { noremap = true, silent = true }),
        },
      }
    end,
  },
}

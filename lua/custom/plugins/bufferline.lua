return {
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
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
        },
      }

      -- Key mappings for bufferline
      local opts = { noremap = true, silent = true }

      -- Navigation
      vim.api.nvim_set_keymap('n', '<leader>bn', ':BufferLineCycleNext<CR>', opts) -- Next buffer
      vim.api.nvim_set_keymap('n', '<leader>bp', ':BufferLineCyclePrev<CR>', opts) -- Previous buffer

      -- Close buffer
      vim.api.nvim_set_keymap('n', '<leader>bq', ':bdelete<CR>', opts)

      -- Go to specific buffer
      for i = 1, 9 do
        vim.api.nvim_set_keymap('n', '<leader>b' .. i, ':BufferLineGoToBuffer ' .. i .. '<CR>', opts)
      end
    end,
  },
}


-- Function to determine the main provider
local function get_auto_suggestions_provider()
  local nvim_avante_provider = vim.env.NVIM_AVANTE_PROVIDE
  local claude_api_key = vim.env.ANTHROPIC_API_KEY
  local copilot_available = pcall(function()
    local copilot = require("copilot")
    return copilot.is_logged_in and copilot.is_logged_in()
  end)
  local openai_api_key = vim.env.OPENAI_API_KEY

  if nvim_avante_provider then
    return nvim_avante_provider
  elseif claude_api_key then
    return "claude"
  elseif copilot_available then
    return "copilot"
  elseif openai_api_key then
    return "openai"
  else
    vim.notify("No valid auto-suggestions provider (Claude, Copilot, or OpenAI) is available.", vim.log.levels.ERROR)
    return nil
  end
end

return {
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    lazy = false,
    version = false, -- set this if you want to always pull the latest change
    opts = function()
      return {
        provider = get_auto_suggestions_provider(),
        auto_suggestions_provider = get_auto_suggestions_provider(),
        claude = {
          endpoint = "https://api.anthropic.com",
          model = "claude-3-5-sonnet-20241022",
          temperature = 0,
          max_tokens = 4096,
        },
        openai = {
          model = "gpt-4",
          temperature = 0.7,
          max_tokens = 4096,
        },
        behaviour = {
          auto_suggestions = true, -- Experimental stage
          auto_set_highlight_group = true,
          auto_set_keymaps = true,
          auto_apply_diff_after_generation = true,
          support_paste_from_clipboard = true,
        },
        mappings = {
          --- @class AvanteConflictMappings
          diff = {
            ours = "co",
            theirs = "ct",
            all_theirs = "ca",
            both = "cb",
            cursor = "cc",
            next = "]x",
            prev = "[x",
          },
          suggestion = {
            accept = "<M-l>",
            next = "<M-]>",
            prev = "<M-[>",
            dismiss = "<C-]>",
          },
          jump = {
            next = "]]",
            prev = "[[",
          },
          submit = {
            normal = "<CR>",
            insert = "<C-s>",
          },
          sidebar = {
            apply_all = "A",
            apply_cursor = "a",
            switch_windows = "<Tab>",
            reverse_switch_windows = "<S-Tab>",
          },
        },
      }
    end,
    build = "make",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
      "zbirenbaum/copilot.lua",      -- for providers='copilot'
      {
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
            use_absolute_path = true,
          },
        },
      },
      {
        'MeanderingProgrammer/render-markdown.nvim',
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
  },
}

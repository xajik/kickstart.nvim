return {
	"NeogitOrg/neogit",
	dependencies = {
		"nvim-lua/plenary.nvim",       -- required
		"nvim-telescope/telescope.nvim", -- optional
		"sindrets/diffview.nvim",      -- optional
	},
	config = function()
		require("neogit").setup()
		-- Set up key bindings
		vim.api.nvim_set_keymap('n', '<leader>git', '<cmd>Neogit kind=split<cr>', { noremap = true, silent = true })
		vim.api.nvim_set_keymap('n', '<leader>cmt', '<cmd>Neogit commit<cr>', { noremap = true, silent = true })
	end
}

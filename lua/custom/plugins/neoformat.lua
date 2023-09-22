return {
	{
		"sbdchd/neoformat",
		config = function()
			-- require("neoformat").setup()
			-- Replace <Leader> with your leader key, by default it is '\'.
			-- You can replace 'f' with any key of your preference.
			vim.api.nvim_set_keymap('n', '<Leader>f', ':Neoformat<CR>', { noremap = true, silent = true })
		end,
	},
}

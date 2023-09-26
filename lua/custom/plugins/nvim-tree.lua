-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

local function my_on_attach(bufnr)
	local api = require "nvim-tree.api"
	local FloatPreview = require("float-preview")

	FloatPreview.attach_nvimtree(bufnr)
	local float_close_wrap = FloatPreview.close_wrap

	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	-- default mappings
	api.config.mappings.default_on_attach(bufnr)

	-- custom mappings
	vim.keymap.set("n", "<C-t>", float_close_wrap(api.node.open.tab), opts("Open: New Tab"))
	vim.keymap.set("n", "<C-v>", float_close_wrap(api.node.open.vertical), opts("Open: Vertical Split"))
	vim.keymap.set("n", "<C-s>", float_close_wrap(api.node.open.horizontal), opts("Open: Horizontal Split"))
	vim.keymap.set("n", "<CR>", float_close_wrap(api.node.open.edit), opts("Open"))
	vim.keymap.set("n", "<Tab>", float_close_wrap(api.node.open.preview), opts("Open"))
	vim.keymap.set("n", "o", float_close_wrap(api.node.open.edit), opts("Open"))
	vim.keymap.set("n", "O", float_close_wrap(api.node.open.no_window_picker), opts("Open: No Window Picker"))
	vim.keymap.set("n", "q", float_close_wrap(api.tree.close), opts("Close"))
	vim.keymap.set("n", "a", float_close_wrap(api.fs.create), opts("Create"))
	vim.keymap.set("n", "d", float_close_wrap(api.fs.remove), opts("Delete"))
	vim.keymap.set("n", "r", float_close_wrap(api.fs.rename), opts("Rename"))
	vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))
end

return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		'nvim-tree/nvim-web-devicons',
		{
			"JMarkin/nvim-tree.lua-float-preview",
			lazy = true,
			-- default
			opts = {
				-- lines for scroll
				scroll_lines = 20,
				-- window config
				window = {
					style = "minimal",
					relative = "win",
					border = "rounded",
					wrap = false,
				},
				mapping = {
					-- scroll down float buffer
					down = { "<C-d>" },
					-- scroll up float buffer
					up = { "<C-e>", "<C-u>" },
					-- enable/disable float windows
					toggle = { "<C-x>" },
				},
				-- hooks if return false preview doesn't shown
				hooks = {
					pre_open = function(path)
						-- if file > 5 MB or not text -> not preview
						local size = require("float-preview.utils").get_size(path)
						if type(size) ~= "number" then
							return false
						end
						local is_text = require("float-preview.utils").is_text(path)
						return size < 5 and is_text
					end,
					post_open = function(bufnr)
						return true
					end,
				},
			},
		},
	},
	config = function()
		require("nvim-tree").setup({

			on_attach = my_on_attach,

			sort_by = "case_sensitive",
			view = {
				width = 30,
				side = "left",
			},
			renderer = {
				group_empty = false,
			},
			filters = {
				dotfiles = false,
			},
		})
	end
}

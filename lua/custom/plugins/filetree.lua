-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require('neo-tree').setup {
			mappings = {
				["h"] = function(state)
					local node = state.tree:get_node()
					if node.type == 'directory' and node:is_expanded() then
						require 'neo-tree.sources.filesystem'.toggle_directory(state, node)
					else
						require 'neo-tree.ui.renderer'.focus_node(state, node:get_parent_id())
					end
				end,
				["l"] = function(state)
					local node = state.tree:get_node()
					if node.type == 'directory' then
						if not node:is_expanded() then
							require 'neo-tree.sources.filesystem'.toggle_directory(state, node)
						elseif node:has_children() then
							require 'neo-tree.ui.renderer'.focus_node(state, node:get_child_ids()[1])
						end
					end
				end,
			}
		}
	end,
	vim.keymap.set('n', '<C-T>', '<Cmd>Neotree toggle<CR>')
}

-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		"s1n7ax/nvim-window-picker",
	},
	cmd = "Neotree",
	keys = {
		{ "\\", ":Neotree reveal<CR>", desc = "NeoTree reveal", silent = true },
		{ "<C-n>", ":tabnext<CR>", desc = "NeoTree next tab", noremap = true, silent = true },
		{ "<C-p>", ":tabprevious<CR>", desc = "NeoTree previous tab", noremap = true, silent = true },
		{ "<C-x>", ":tabclose<CR>", desc = "NeoTree close tab", noremap = true, silent = true },
	},
	opts = {
		filesystem = {
			window = {
				mappings = {
					["\\"] = "close_window",
				},
			},
		},
	},
}

return {
	"akinsho/toggleterm.nvim",
	version = "*",
	opts = {--[[ things you want to change go here]]
		size = 20,
		shade_terminals = true,
		direction = "float",
		open_mapping = [[<C-\>]],
	},
	config = function(_, opts)
		require("toggleterm").setup(opts)

		-- Add custom keybindings
		vim.keymap.set("n", "<leader>tt", ":ToggleTerm<CR>", { noremap = true, silent = true })
		-- Optional additional mappings for different terminal layouts
		vim.keymap.set("n", "<leader>ttf", ":ToggleTerm direction=float<CR>", { noremap = true, silent = true })
		vim.keymap.set("n", "<leader>tth", ":ToggleTerm direction=horizontal<CR>", { noremap = true, silent = true })
	end,
}

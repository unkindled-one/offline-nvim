return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"debugloop/telescope-undo.nvim",
	},
	lazy = false,
	config = function()
		local telescope = require("telescope")
		telescope.setup({
			defaults = {
				mappings = {
					i = {
						["<C-j>"] = "move_selection_next",
						["<C-k>"] = "move_selection_previous",
						["<esc>"] = require("telescope.actions").close,
					},
				},
			},
			extensions = {},
		})
		telescope.load_extension("undo")
		vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo<cr>")
	end,
	keys = {
		vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>"),
		vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>"),
		vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>"),
		vim.keymap.set("n", "<leader>fz", ":Telescope current_buffer_fuzzy_find<CR>"),
	},
}

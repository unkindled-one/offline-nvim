return {
	"stevearc/oil.nvim",
	opts = {
		keymaps = {
			["<C-r>"] = "actions.refresh",
			["<C-h>"] = false,
			["<C-l>"] = false,
		},
	},
	dependencies = { "nvim-tree/nvim-web-devicons" },
	lazy = false,
}

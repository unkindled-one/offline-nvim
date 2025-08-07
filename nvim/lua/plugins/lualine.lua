return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	lazy = false,
	config = function()
		require("lualine").setup({
			theme = "catppuccin",
			section_separators = { left = "", right = "" },
			component_separators = { left = "", right = "" },
		})
	end,
}

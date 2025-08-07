return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	lazy = false,
	opts = {},
	config = function()
		-- vim.cmd('colorscheme tokyonight-storm')
		-- vim.cmd('colorscheme tokyonight-night')
		-- vim.cmd('colorscheme tokyonight')
		-- vim.cmd('colorscheme catppuccin-frappe')
		-- vim.cmd('colorscheme catppuccin-latte') -- LIGHT MODE
		vim.cmd("colorscheme catppuccin-macchiato") --
		-- vim.cmd('colorscheme catppuccin-mocha')
	end,
}

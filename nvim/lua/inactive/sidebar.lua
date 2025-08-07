return {
	"sidebar-nvim/sidebar.nvim",
	lazy = false,
	config = function()
		require("sidebar-nvim").setup({
			-- open = true,
			datetime = {
				icon = "󰥔",
				format = "%a, %I:%M",
			},
		})
		vim.keymap.set("n", "<leader>st", ":SidebarNvimToggle<CR>", { desc = "Toggles Sidebar" })
	end,
}

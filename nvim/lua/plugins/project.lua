return {
	"ahmedkhalf/project.nvim",
	config = function()
		require("project.nvim").setup({
			patterns = { ".git", ".godot", "=src" },
		})
	end,
}

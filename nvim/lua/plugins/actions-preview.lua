return {
	"aznhe21/actions-preview.nvim",
	event = "LspAttach",
	config = function()
		vim.keymap.set(
			{ "v", "n" },
			"<leader>ap",
			require("actions-preview").code_actions,
			{ desc = "See preview of code actions." }
		)
	end,
}

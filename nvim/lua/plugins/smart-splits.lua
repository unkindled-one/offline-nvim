return {
	"mrjones2014/smart-splits.nvim",
	lazy = false,
	keys = {
		vim.keymap.set("n", "<A-h>", ":SmartResizeLeft<CR>"),
		vim.keymap.set("n", "<A-j>", ":SmartResizeDown<CR>"),
		vim.keymap.set("n", "<A-k>", ":SmartResizeUp<CR>"),
		vim.keymap.set("n", "<A-l>", ":SmartResizeRight<CR>"),
		-- moving between splits
		-- vim.keymap.set('n', '<C-h>', ':SmartCursorMoveLeft<CR>'),
		-- vim.keymap.set('n', '<C-j>', ':SmartCursorMoveDown<CR>'),
		-- vim.keymap.set('n', '<C-k>', ':SmartCursorMoveUp<CR>'),
		-- vim.keymap.set('n', '<C-l>', ':SmartCursorMoveRight<CR>'),
		-- vim.keymap.set('n', '<C-\\>', require('smart-splits').move_cursor_previous),
		-- swapping buffers between windows
		vim.keymap.set("n", "<leader><leader>h", ":SmartSwapLeft<CR>"),
		vim.keymap.set("n", "<leader><leader>j", ":SmartSwapDown<CR>"),
		vim.keymap.set("n", "<leader><leader>k", ":SmartSwapUp<CR>"),
		vim.keymap.set("n", "<leader><leader>l", ":SmartSwapRight<CR>"),
	},
}

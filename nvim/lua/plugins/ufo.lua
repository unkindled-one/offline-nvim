return {
	"kevinhwang91/nvim-ufo",
	dependencies = { "kevinhwang91/promise-async" },
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local ufo = require("ufo")
		vim.o.foldcolumn = "0"
		vim.o.foldlevel = 99
		vim.foldlevelstart = 99
		vim.o.foldenable = true

		vim.keymap.set("n", "zR", ufo.openAllFolds)
		vim.keymap.set("n", "zM", ufo.closeAllFolds)

		-- setup lsp as provider
		local capabilities = vim.lsp.protocol.make_client_capabilities()
		capabilities.textDocument.foldingRange = {
			dynamicRegistration = false,
			lineFoldingOnly = true,
		}
		local language_servers = require("lspconfig").util.available_servers()
		for _, ls in ipairs(language_servers) do
			require("lspconfig")[ls].setup({
				capabilities = capabilities,
			})
		end
		ufo.setup()
	end,
}

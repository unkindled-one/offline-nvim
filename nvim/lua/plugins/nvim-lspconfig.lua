return {
	"neovim/nvim-lspconfig",
	-- lazy = false,
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"windwp/nvim-autopairs",
		"williamboman/mason.nvim",
		"hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
	},
	config = function()
		local lspconfig = require("lspconfig")
		local cmp_nvim_lsp = require("cmp_nvim_lsp")

		local opts = { noremap = true, silent = true }
		vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
		vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
		vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
		vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist)

		opts.desc = "Show LSP references"
		vim.keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts)
		opts.desc = "Go to declaration"
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
		opts.desc = "Show LSP definitions"
		vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)
		opts.desc = "Show LSP implementations"
		vim.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)
		opts.desc = "Show LSP type definitions"
		vim.keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts)
		opts.desc = "See available code actions"
		vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
		opts.desc = "Smart rename"
		vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
		opts.desc = "Show buffer diagnostics"
		vim.keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts)
		opts.desc = "Show line diagnostics"
		vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)
		opts.desc = "Go to previous diagnostic"
		vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
		opts.desc = "Go to next diagnostic"
		vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
		opts.desc = "Show documentation for what is under cursor"
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		opts.desc = "Show function signature help"
		vim.keymap.set("i", "<C-s>", vim.lsp.buf.signature_help, opts)

		local capabilities = cmp_nvim_lsp.default_capabilities()
		capabilities.textDocument.foldingRange = {
			dynamicRegistration = false,
			lineFoldingOnly = true,
		}

		lspconfig.basedpyright.setup({
			capabilities = capabilities,
		})
		lspconfig.lua_ls.setup({
			capabilities = capabilities,
		})
		lspconfig.rust_analyzer.setup({
			capabilities = capabilities,
			settings = {
				["rust-analyzer"] = {},
			},
		})
		lspconfig.clangd.setup({
			capabilities = capabilities,
		})

		local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
		for type, icon in pairs(signs) do
			local hl = "DiagnosticSign" .. type
			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
		end
	end,
}

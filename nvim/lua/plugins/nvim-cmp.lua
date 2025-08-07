return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-nvim-lsp-signature-help",
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
		"rafamadriz/friendly-snippets",
	},
	config = function()
		local cmp = require("cmp")
		local luasnip = require("luasnip")
		require("luasnip.loaders.from_vscode").lazy_load()

		cmp.setup({
			completion = {
				copmleteopt = "menu,menuone,preview,noselect",
			},
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				["<S-tab>"] = cmp.mapping.select_prev_item(),
				["<tab>"] = cmp.mapping.select_next_item(),
				["<C-Space>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.abort(),
				["<CR>"] = cmp.mapping.confirm({ select = false }),
			}),
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
				{ name = "buffer" },
				{ name = "path" },
				{ name = "nvim_lsp_signature_help" },
			}),
		})

		-- cmp.setup.cmdline(':', {
		--   mapping = cmp.mapping.preset.cmdline(),
		--   sources = cmp.config.sources({
		--     { name = 'path' }
		--   })
		-- })
		--
		-- cmp.setup.cmdline('/', {
		--   mapping = cmp.mapping.preset.cmdline(),
		--   sources = cmp.config.sources(
		--     {{ name = 'path' }}
		--     {{ name = 'cmdline', option = {ignore_cms = { 'Man', '!' }} }}
		--   )
		-- })
	end,
}

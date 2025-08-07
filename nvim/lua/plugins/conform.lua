return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		{
			"<leader>fm",
			function()
				require("conform").format({ async = true })
			end,
			mode = "",
			desc = "Format buffer",
		},
		{
			"<leader>tf",
			function()
				if vim.b.disable_autoformat then
					vim.cmd("FormatEnable")
					vim.notify("Enabled autoformat for current buffer")
				else
					vim.cmd("FormatDisable")
					vim.notify("Disabled autoformat for current buffer")
				end
			end,
			desc = "Toggle autoformat for current buffer",
		},
		{
			"<leader>tF",
			function()
				if vim.b.disable_autoformat then
					vim.cmd("FormatEnable!")
					vim.notify("Enabled autoformat globally")
				else
					vim.cmd("FormatDisable!")
					vim.notify("Disabled autoformat globally")
				end
			end,
			desc = "Toggle autoformat globally",
		},
	},
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "ruff" },
			c = { "clang-format" },
			cs = { "csharpier" },
			rust = { lsp_format = "prefer" },
		},
		default_format_opts = {
			lsp_format = "fallback",
		},
		format_on_save = function(bufnr)
			if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
				return
			end
			return {
				timeout_ms = 500,
			}
		end,
	},
	config = function(_, opts)
		require("conform").setup(opts)
		vim.api.nvim_create_user_command("FormatDisable", function(args)
			if args.bang then
				vim.g.disable_autoformat = true
			else
				vim.b.disable_autoformat = true
			end
		end, {
			desc = "Disable autoformat-on-save",
			bang = true,
		})
		vim.api.nvim_create_user_command("FormatEnable", function(args)
			if args.bang then
				vim.g.disable_autoformat = false
			else
				vim.b.disable_autoformat = false
			end
		end, {
			desc = "Reenable autoformat-on-save",
			bang = true,
		})
	end,
}

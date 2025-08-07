vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.wo.relativenumber = true
--- Fold stuff
vim.o.foldcolumn = "1"
vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
-- vim.opt.foldmethod = 'expr'
-- vim.opt.foldexpr = 'v:lua.vim.treesitter.foldexpr()'

-- Stuff for powershell
vim.o.shell = "pwsh.exe"
vim.o.shellcmdflag =
	"-NoLogo -NoProfile -NonInteractive -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;$PSStyle.OutputRendering=[System.Management.Automation.OutputRendering]::PlainText;"
vim.o.shellxquote = ""
vim.o.shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait"
vim.o.shellpipe = '2>&1 | %%{ "$_" } | tee %s; exit $LastExitCode'
vim.o.shellquote = ""
vim.o.shellxquote = ""

-- vim.lsp.inlay_hint.enable()
vim.cmd("set termguicolors")

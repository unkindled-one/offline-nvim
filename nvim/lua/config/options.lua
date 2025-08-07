local opt = vim.opt

opt.swapfile = false

-- Tab / Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true
opt.wrap = false

-- Search
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false

-- Appearance
opt.termguicolors = true
opt.number = true
opt.cmdheight = 1
opt.scrolloff = 10
opt.completeopt = "menuone,noinsert"

-- Behavior
opt.hidden = true
opt.errorbells = false
opt.undofile = true
opt.backspace = "indent,eol,start"
opt.splitright = true
opt.splitbelow = true
opt.autochdir = false
opt.iskeyword:append("-")
opt.clipboard:append("unnamedplus")
opt.modifiable = true
opt.encoding = "utf-8"

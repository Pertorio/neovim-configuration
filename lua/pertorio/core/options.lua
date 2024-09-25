vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- Serach Settings
opt.ignorecase = true	-- ignore case when searching
opt.smartcase = true	-- if you include mixed case in your search, assume you want case-sensitive

-- Tabs & indentation
opt.tabstop = 4 -- 4 spaces for tabs
opt.shiftwidth = 4 -- 4 spaces for indent width
opt.expandtab = true -- expand tab to space
opt.autoindent = true -- copy indent from current line when starting new one

-- Highlight the current cursor line
opt.cursorline = true

-- Turn on termguicolors for tokyonight colorscheme
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"	-- show sign column so that text doesn't shift

-- backspace
-- opt.backspace = "indent.eol.start" -- Make backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus")	-- use system clipboard as default register

-- split windows
opt.splitright = true	-- split vertical window to the right
opt.splitbelow = true	-- split horizontal window to the bottom



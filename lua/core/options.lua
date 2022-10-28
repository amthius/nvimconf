local opt = vim.opt 

-- Set the map leader, (space)
vim.g.mapleader = " "

-- Clipboard 
opt.clipboard = "unnamedplus"

-- Showmode
opt.showmode = false

-- Cursor line
opt.cursorline = true

-- Mouse
opt.mouse = "a"

-- Tab options
opt.expandtab = true
opt.smarttab = true
opt.smartindent = true
opt.autoindent = true
opt.smartcase = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4

-- Wrapping
opt.wrap = false 

-- Numbering
opt.number = true
opt.relativenumber = true
opt.numberwidth = 2

-- Split options
opt.splitbelow = true
opt.splitright = true

-- Terminal colors
opt.termguicolors = true

-- Remove "~" from number lines
opt.fillchars = { eob = " " }

-- Toggle swap file creation
opt.swapfile = false

-- Prevent shifting text
opt.signcolumn = "yes"

-- Remove default splash screen
opt.shortmess:append "sI"

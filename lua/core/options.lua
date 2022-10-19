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

-- Disable built-in plugins
local disabled_built_ins = {
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "gzip",
    "zip",
    "zipPlugin",
    "tar",
    "tarPlugin",
    "getscript",
    "getscriptPlugin",
    "vimball",
    "vimballPlugin",
    "2html_plugin",
    "logipat",
    "rrhelper",
    "spellfile_plugin",
    "matchit"
}

for _, plugin in pairs(disabled_built_ins) do
    vim.g["loaded_" .. plugin] = 1
end
local opts = {noremap = true, silent = true}
local keymap = vim.api.nvim_set_keymap

-- Set the map leader, (space)
vim.g.mapleader = " "

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Set number format 
keymap('n', '<leader>n', '<cmd> set nu! <CR>', opts) 
keymap('n', '<leader>rn', '<cmd> set rnu! <CR>', opts) 

-- Splitting
keymap('n', '<leader>v', '<cmd> vsplit <CR>', opts)
keymap('n', '<leader>h', '<cmd> split <CR>', opts)

-- Copy and removing highlight 
keymap('n', '<C-c>', '<cmd> %y+ <CR>', opts)
keymap('n', '<ESC>', '<cmd> noh <CR>', opts)

-- Stay in indent mode (VISUAL)
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Close buffer
keymap("n", "<leader>x", "<cmd> bd <CR>", opts)

-- Reindent entire file
keymap("n", "<leader>i", "gg=G''", opts)

-- Fix yanking
keymap("v", "p", '"_dP"', opts)

----------------------------
-- Plugin related keymapping
----------------------------

-- Telescope
keymap("n", "<leader>ff", "<cmd> Telescope find_files <CR>", opts)
keymap("n", "<leader>gg", "<cmd> Telescope live_grep <CR>", opts)
keymap("n", "<leader>bb", "<cmd> Telescope buffers <CR>", opts)


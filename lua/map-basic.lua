local map = vim.api.nvim_set_keymap
local ns = { noremap = true, silent = true }

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

map('i', 'jk', '<ESC>', ns)
-- map('t', 'jk', '<C-\\><C-n>', ns)

map('i', 'jj', '<ESC>', ns)
-- map('t', 'jj', '<C-\\><C-n>', ns)

map('t', '<ESC>', '<C-\\><C-n>', ns)
map('t', '<S-Tab>', '<Esc>', ns)

map('n', '+', '<C-a>', ns)
map('n', '-', '<C-x>', ns)
map('n', 'j', 'gj', ns)
map('n', 'k', 'gk', ns)
map('n', '<C-j>', '5j', ns)
map('n', '<C-k>', '5k', ns)


map('v', 'j', 'gj', ns)
map('v', 'k', 'gk', ns)
map('v', '<C-j>', '5j', ns)
map('v', '<C-k>', '5k', ns)

local map = vim.api.nvim_set_keymap
local ns = {noremap=true,silent=true}

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

map('i', 'jj','<ESC>',ns)

map('t', '<ESC>','<C-\\><C-n>',ns)

map('n', 'j','gj',ns)
map('n', 'k','gk',ns)
map('n', '<C-j>','5j',ns)
map('n', '<C-k>','5k',ns)
map('n', '<C-n>', '<cmd>tabe<cr>', ns)
map('n', '<C-c>', '<cmd>tabc<cr>', ns)
map('n', '<C-o>', '<cmd>tabo<cr>', ns)
map('n', '<C-0>', '<cmd>bfirst<cr>', ns)
map('n', '<C-l>', '<cmd>bnext<cr>', ns)
map('n', '<C-h>', '<cmd>bprevious<cr>', ns)
map('n', '<C-q>', '<cmd>b#<cr><cmd>bd#<cr>', ns)
map('n', '<C-w>-', '<C-w>s', ns)
map('n', '<C-w>|', '<C-w>v', ns)
map('n', ')', '$', ns)

map('v', 'j','gj',ns)
map('v', 'k','gk',ns)
map('v', '<C-j>','5j',ns)
map('v', '<C-k>','5k',ns)

-- Fern setting
map('n', '<C-e>', '<cmd>Fern . -reveal=% -drawer<cr>',ns)

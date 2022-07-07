local map = vim.api.nvim_set_keymap
local ns = {noremap=true,silent=true}

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

map('i','jj','<ESC>',ns)
map('t','<ESC>','<C-\\><C-n>',ns)
map('n','j','gj',ns)
map('n','k','gk',ns)
map('n','<C-j>','5j',ns)
map('n','<C-k>','5k',ns)
map('v','j','gj',ns)
map('v','k','gk',ns)
map('v','<C-j>','5j',ns)
map('v','<C-k>','5k',ns)
-- map('n','<leader>e','<cmd>Fern . -reveal=% -drawer<cr>',ns)
map('n', '<C-l>', '<cmd>bnext<cr>', ns)
map('n', '<C-h>', '<cmd>bprevious<cr>', ns)
map('n', '<C-q>', '<cmd>b#<cr><cmd>bd#<cr>', ns)

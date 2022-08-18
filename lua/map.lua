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
map('n', '<leader>c', '<cmd>bd<cr>', ns)
map('n', '<leader>C', '<cmd>bd!<cr>', ns)
map('n', '<C-l>', '<cmd>bnext<cr>', ns)
map('n', '<C-h>', '<cmd>bprevious<cr>', ns)
map('n', '<leader>-', '<C-w>s', ns)
map('n', '<leader>|', '<C-w>v', ns)
map('n', '<leader>x', '<C-w>c',ns)
map('n', '<leader>j', '<C-w>j',ns)
map('n', '<leader>l', '<C-w>l',ns)
map('n', '<leader>j', '<C-w>j',ns)
map('n', '<leader>k', '<C-w>k',ns)
map('n', '<leader>h', '<C-w>h',ns)
map('n', '<leader>w', '<cmd>w<cr>',ns)
map('n', '<leader>q', '<cmd>q<cr>',ns)
map('n', '<leader>t', '<cmd>T<cr>',ns)
map('n', ')', '$', ns)
map('n', 'gt', '<cmd>LspHover<cr>',ns)
map('n', 'gd', '<cmd>LspDefinition<cr>',ns)
map('n', '<leader>r', '<cmd>LspReferences<cr>',ns)

map('n', '<leader>p', '<cmd>GFiles<cr>',ns)
map('n', '<leader>P', '<cmd>Files<cr>',ns)
map('n', '<leader>f', '<cmd>RG<cr>',ns)

map('v', 'j','gj',ns)
map('v', 'k','gk',ns)
map('v', '<C-j>','5j',ns)
map('v', '<C-k>','5k',ns)


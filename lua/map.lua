local map = vim.api.nvim_set_keymap
local ns = { noremap = true, silent = true }

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

map('i', 'jj', '<ESC>', ns)

map('t', '<ESC>', '<C-\\><C-n>', ns)

map('n', 'j', 'gj', ns)
map('n', 'k', 'gk', ns)
map('n', '<C-j>', '5j', ns)
map('n', '<C-k>', '5k', ns)
map('n', '<leader>c', '<cmd>bd<cr>', ns)
map('n', '<leader>C', '<cmd>bd!<cr>', ns)
map('n', '<C-l>', '<cmd>bnext<cr>', ns)
map('n', '<C-h>', '<cmd>bprevious<cr>', ns)
map('n', '<leader>-', '<C-w>s', ns)
map('n', '<leader>|', '<C-w>v', ns)
map('n', '<leader>x', '<C-w>c', ns)
map('n', '<leader>j', '<C-w>j', ns)
map('n', '<leader>l', '<C-w>l', ns)
map('n', '<leader>j', '<C-w>j', ns)
map('n', '<leader>k', '<C-w>k', ns)
map('n', '<leader>h', '<C-w>h', ns)
map('n', '<leader>w', '<cmd>w<cr>', ns)
map('n', '<leader>q', '<cmd>q<cr>', ns)
map('n', '<leader>t', '<cmd>T<cr>', ns)
map('x', '<leader>p', '"0p', ns)
map('n', '<leader>d', '"_d', ns)
map('x', '<leader>d', '"_d', ns)
map('n', '<leader>D', '"_D', ns)
map('x', '<leader>D', '"_D', ns)
map('n', ')', '$', ns)

-- Trouble
map('n', '<leader>xx', '<cmd>TroubleToggle<cr>', ns)
map('n', '<leader>xw', '<cmd>TroubleToggle workspace_diagnostics<cr>', ns)
map('n', '<leader>xd', '<cmd>TroubleToggle document_diagnostics<cr>', ns)
map('n', '<leader>xq', '<cmd>TroubleToggle quickfix<cr>', ns)
map('n', '<leader>xl', '<cmd>TroubleToggle loclist<cr>', ns)

-- lsp
map('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<cr>', ns)
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', ns)
map('n', 'gi', '<cmd>lua vim.lsp.buf.references()<cr>', ns)
map('n', 'gj', '<cmd>lua vim.lsp.buf.formatting()<CR>', ns)
map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', ns)
map('n', 'gI', '<cmd>lua vim.lsp.buf.implementation()<CR>', ns)
map('n', 'gt', '<cmd>lua vim.lsp.buf.type_definition()<CR>', ns)
map('n', 'gn', '<cmd>lua vim.lsp.buf.rename()<CR>', ns)
map('n', 'ga', '<cmd>lua vim.lsp.buf.code_action()<CR>', ns)
map('n', 'ge', '<cmd>lua vim.diagnostic.open_float()<CR>', ns)
map('n', 'g]', '<cmd>lua vim.diagnostic.goto_next()<CR>', ns)
map('n', 'g[', '<cmd>lua vim.diagnostic.goto_prev()<CR>', ns)
map('n', 'gk', '<cmd>lua vim.lsp.buf.signature_help()<CR>', ns)
map('n', 'gwa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', ns)
map('n', 'gwb', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', ns)
map('n', 'gll', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', ns)

-- map('n', '<leader><leader>p', '<cmd>GFiles<cr>', ns)
-- map('n', '<leader><leader>P', '<cmd>Files<cr>', ns)
-- map('n', '<leader><leader>f', '<cmd>RG<cr>', ns)
--
-- telescope
map('n', '<leader>ff', '<cmd>lua require("telescope.builtin").find_files()<cr>', ns)
map('n', '<leader>fg', '<cmd>lua require("telescope.builtin").live_grep()<cr>', ns)
map('n', '<leader>fb', '<cmd>lua require("telescope.builtin").buffers()<cr>', ns)
map('n', '<leader>fh', '<cmd>lua require("telescope.builtin").help_tags()<cr>', ns)
map('n', '<leader>fp', '<cmd>lua require("telescope.builtin").registers()<cr>', ns)
map('n', '<leader>fk', '<cmd>lua require("telescope.builtin").keymaps()<cr>', ns)
map('n', '<leader>ft', '<cmd>lua require("telescope.builtin").filetypes()<cr>', ns)
map('n', '<leader>fj', '<cmd>lua require("telescope.builtin").jumplist()<cr>', ns)

map('n', '<leader>lr', '<cmd>lua require("telescope.builtin").references()<cr>', ns)

map('v', 'j', 'gj', ns)
map('v', 'k', 'gk', ns)
map('v', '<C-j>', '5j', ns)
map('v', '<C-k>', '5k', ns)

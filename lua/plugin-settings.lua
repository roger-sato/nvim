local map = vim.api.nvim_set_keymap
local ns = { noremap = true, silent = true }

-- <Easymotion Settings>
vim.g.EasyMotion_smartcase = 1
map('n','<Leader><Leader>f','<Plug>(easymotion-bd-f)',ns)
map('n','<Leader><Leader>h','<Plug>(easymotion-linebackward)',ns)
map('n','<Leader><Leader>l','<Plug>(easymotion-lineforward)',ns)
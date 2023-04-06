vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'machakann/vim-highlightedyank'
  use 'easymotion/vim-easymotion'
  use 'machakann/vim-sandwich'
  use 'justinmk/vim-sneak'
  use 'wellle/targets.vim'
end)
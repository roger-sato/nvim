vim.cmd [[autocmd ColorScheme * hi TabLineSel guibg=#b8860b guifg=black]]
-- vim.cmd[[autocmd ColorScheme * hi CursorLine ctermfg=15 ctermbg=242 guibg=#161F25]]
-- vim.cmd[[autocmd ColorScheme * hi LspDiagnosticsDefaultError guifg=#738C9C]]
vim.cmd [[set termguicolors]]
-- vim.cmd [[colorscheme codedark]]
vim.cmd [[colorscheme own-color]]
-- vim.cmd [[colorscheme tender]]
-- vim.cmd [[colorscheme dogrun]]
-- vim.cmd [[colorscheme PaperColor]]
-- vim.cmd [[colorscheme gruvbit]]
-- vim.cmd [[colorscheme carbonfox]]


require 'nvim-treesitter.configs'.setup {
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	}
}

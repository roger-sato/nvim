if exists('g:vscode')
	lua require('config')
	lua require('map-basic')
	lua require('vscode-plugin')
else
	lua require('config')
	lua require('map-basic')
	lua require('map')
	lua require('plugin')
	lua require('lsp')
	lua require('style')
endif

lua require('config')
lua require('map')
lua require('plugin')
if !exists('g:vscode') 
    lua require('style')
endif

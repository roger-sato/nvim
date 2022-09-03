local lsp_installer = require("nvim-lsp-installer")
lsp_installer.on_server_ready(function(server)
	local opts = {}
	server:setup(opts)
end)

-- format on save
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]]

local servers = { 'solargraph', 'tsserver', 'gopls', 'rust_analyzer', 'pyright' }
local nvim_lsp = require('lspconfig')

for _, lsp in ipairs(servers) do
	nvim_lsp[lsp].setup {
		flags = {
			debounce_text_changes = 150,
		},
		settings = {
			solargraph = {
				diagnostics = false
			}
		}
	}
end

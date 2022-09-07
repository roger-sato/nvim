local mason = require("mason")
mason.setup()

-- format on save
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync({tabSize = 2, insertSpaces = false})]]
-- vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format({ async = true })]]

-- local servers = { 'solargraph', 'tsserver', 'gopls', 'rust_analyzer','sumneko_lua' }
local nvim_lsp = require('lspconfig')

local mason_lspconfig = require('mason-lspconfig')

local on_attach = function(client, _)
	if client.name == 'tsserver' then
		-- HACK: neovim 0.8 change client_capabilities => server_capabilities
		-- client.server_capabilities.document_formatting = false
		-- client.server_capabilities.document_range_formatting = false
		client.resolved_capabilities.document_formatting = false
	end
end

local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		null_ls.builtins.diagnostics.misspell,
		null_ls.builtins.formatting.prettier,
	}
})

mason_lspconfig.setup_handlers({
	function(server_name)
		local opts = {

		}
		opts.on_attach = on_attach
		opts.flags = {
			debounce_text_changes = 150,
		}

		if server_name == "sumneko_lua" then
			opts.settings = {
				Lua = {
					diagnostics = { globals = { 'vim', 'use' } },
				}
			}
		end

		if server_name == "tsserver" then
			opts.settings = {
				javascript = {
					format = { enable = false },
				},
				typescript = {
					format = { enable = false },
				},
			}
		end


		nvim_lsp[server_name].setup(opts)
	end
})

-- for _, lsp in ipairs(servers) do
-- 	nvim_lsp[lsp].setup {
-- 		flags = {
-- 			debounce_text_changes = 150,
-- 		},
-- 		settings = {
-- 			solargraph = {
-- 				diagnostics = false
-- 			}
-- 		}
-- 	}
-- end

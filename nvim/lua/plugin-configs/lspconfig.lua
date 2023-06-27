require('mason').setup()
require('mason-lspconfig').setup({
	ensure_installed = { "lua_ls" , "rust_analyzer" }
})

require('lspconfig').lua_ls.setup {}
require('lspconfig').rust_analyzer.setup {}

require('mason').setup()
require('mason-lspconfig').setup({
	ensure_installed = { "lua_ls" , "rust_analyzer" }
})

local cmp = require('cmp')

cmp.setup({
	sources = {
		{ name = 'nvim_lsp' },
	},
})


vim.api.nvim_set_keymap('i', '<C-Space>', 'v:lua.require("cmp").complete()', { expr = true, noremap = true })

require('lspconfig').lua_ls.setup {
	lspconfig = {
		cmd = { 'lua-language-server' },
		on_attach = require('lsp').common_on_attach,
		settings = {
			Lua = {
				completion = {
					keywordSnippet = 'Disable',
				},
			},
		},
	},
}
require('lspconfig').rust_analyzer.setup {}

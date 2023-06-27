require('mason').setup()
require('mason-lspconfig').setup({
	ensure_installed = { "lua_ls" , "rust_analyzer" }
})

local cmp = require('cmp')

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-o>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.abort(),
		['<CR>'] = cmp.mapping.confirm({ select = true }),
	}),
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' },
	}, {
		{ name = 'buffer' },
	}),
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

--vim.api.nvim_set_keymap('i', '<C-Space>', 'v:lua.require("cmp").complete()', { expr = true, noremap = true })

require('lspconfig').lua_ls.setup {
	capabilities = capabilities
}
require('lspconfig').rust_analyzer.setup {}

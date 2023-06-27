require('packer').startup(function(use)
    use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'
	use {
		'williamboman/mason.nvim',
		'williamboman/mason-lspconfig.nvim',
		'neovim/nvim-lspconfig',
	}
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'L3MON4D3/LuaSnip'
	use 'folke/tokyonight.nvim'
end)

local plugin_configs_path = vim.fn.stdpath('config') .. '/lua/plugin-configs'

for _, filename in ipairs(vim.fn.readdir(plugin_configs_path)) do
    local plugin_config = plugin_configs_path .. '/' .. filename
    require('plugin-configs/' .. vim.fn.fnamemodify(filename, ':r'))
end

vim.cmd 'colorscheme tokyonight-moon'

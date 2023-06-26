require('packer').startup(function(use)
    use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'
	use {
		'williamboman/mason.nvim',
		'williamboman/mason-lspconfig.nvim',
		'neovim/nvim-lspconfig',
	}
end)

local plugin_configs_path = vim.fn.stdpath('config') .. '/lua/plugin-configs'

for _, filename in ipairs(vim.fn.readdir(plugin_configs_path)) do
    local plugin_config = plugin_configs_path .. '/' .. filename
    require('plugin-configs/' .. vim.fn.fnamemodify(filename, ':r'))
end

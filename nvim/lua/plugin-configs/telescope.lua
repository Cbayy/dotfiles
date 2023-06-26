local telescope = require('telescope')

telescope.setup {
	defaults = {
		prompt_prefix = '> ',
		selection_caret = '> ',
		entry_prefix = '  ',
		sorting_strategy = 'ascending',
		layout_strategy = 'horizontal',
		layout_config = {
			prompt_position = 'top',
		},
		file_ignore_patterns = { 'node_modules', '.git', '.svn', '.tmp' },
	},
}

local map = vim.api.nvim_set_keymap
map('n', '<Leader>ff', '<Cmd>Telescope find_files<CR>', { noremap = true, silent = true })
map('n', '<Leader>fg', '<Cmd>Telescope live_grep<CR>', { noremap = true, silent = true })
map('n', '<Leader>fb', '<Cmd>Telescope buffers<CR>', { noremap = true, silent = true })
return telescope

local telescope = require('telescope')

telescope.setup {
	defaults = {

	},
}

local map = vim.api.nvim_set_keymap
map('n', '<Leader>ff', '<Cmd>Telescope find_files<CR>', { noremap = true, silent = true })
map('n', '<Leader>fg', '<Cmd>Telescope live_grep<CR>', { noremap = true, silent = true })
map('n', '<Leader>fb', '<Cmd>Telescope buffers<CR>', { noremap = true, silent = true })
return telescope

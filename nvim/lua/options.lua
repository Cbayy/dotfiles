local o = vim.opt

o.syntax = 'ON'

o.number = true
o.relativenumber = true
o.cursorline = true

o.encoding = 'utf8'
o.fileencoding = 'utf8'

o.tabstop = 4
o.shiftwidth = 4
o.softtabstop = 4

o.smartcase = true

o.wildmenu = true
o.wildmode = {'longest:list','full'}
o.wildignore = {
	'jpg',
	'jpeg',
	'png',
}

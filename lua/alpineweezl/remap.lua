local wk = require('which-key')

vim.g.mapleader = " "

wk.register({
	e = { vim.cmd.Ex, 'Netrw Directory Listing' }
},{ prefix = '<leader>'})


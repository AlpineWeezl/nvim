local wk = require('which-key')

wk.register({
	g = {
		name='Git',
		s = { vim.cmd.Git, 'Open Git window'},
	},
}, { prefix = '<leader>' })

-- vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

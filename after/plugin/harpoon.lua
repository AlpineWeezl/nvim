local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
local wk = require('which-key')

wk.register({
h = {
	name = 'Harpoon',
	a = {mark.add_file, 'Add File to Harpoon'},
	q = {ui.toggle_quick_menu, 'Toggle Harpoon Quick Menu'},
	h = {ui.nav_file(1), 'Harpoon File (1)'},
	j = {ui.nav_file(2), 'Harpoon File (2)'},
	k = {ui.nav_file(3), 'Harpoon File (3)'},
	l = {ui.nav_file(4), 'Harpoon File (4)'},
}
},{ prefix = '<leader>' })


local builtin = require('telescope.builtin')
local wk = require("which-key")

wk.register({
  f = {
    name = 'find files in project',
    f = { builtin.find_files, 'Local Project File' },
    g = { builtin.git_files, 'Git Project File' },
    c = { function() builtin.grep_string({search = vim.fn.input("Grep > ")}); end, 'Grep Project Files' },
    r = { '<cmd>Telescope oldfiles<cr>', 'Open Recent File' },
  },
}, { prefix = "<leader>" })

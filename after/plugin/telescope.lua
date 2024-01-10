local builtin = require('telescope.builtin')
-- vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- vim.keymap.set('n', '<C-p>', builtin.git_files, {}, 'Git Files')
-- vim.keymap.set('n', '<leader>ps', function()
--	builtin.grep_string({ search = vim.fn.input("Grep > ")});
-- end)

local wk = require("which-key")
-- As an example, we will create the following mappings:
--  * <leader>ff find files
--  * <leader>fr show recent files
--  * <leader>fb Foobar
-- we'll document:
--  * <leader>fn new file
--  * <leader>fe edit file
-- and hide <leader>1

wk.register({
  f = {
    name = 'find files in project', -- optional group name
    f = { builtin.find_files, 'Local Project File' },
    g = { builtin.git_files, 'Git Project File' },
    c = { builtin.grep_string, 'Grep Project Files' },
    r = { '<cmd>Telescope oldfiles<cr>', 'Open Recent File' },
    -- n = { "New File" }, -- just a label. don't create any mapping
    -- e = "Edit File", -- same as above
    -- ["1"] = "which_key_ignore",  -- special label to hide it in the popup
    -- b = { function() print("bar") end, "Foobar" } -- you can also pass functions!
  },
}, { prefix = "<leader>" })

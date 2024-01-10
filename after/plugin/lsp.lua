local lsp = require('lsp-zero')

require('mason').setup({})
require('mason-lspconfig').setup({

	ensure_installed = {
		'tsserver',
		'eslint',
		'rust_analyzer',
	},
	handlers = {
		lsp.default_setup,
	},
})

lsp.preset('recommended')

local cmp = require('cmp')
local cmp_select = {bahavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.ddefaults.cmp_mappings({
	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
	['<C-y>'] = cmp.mapping.confirm({select - true}),
	['<C-Space>'] = cmp.mapping.complete(),
})

lsp.set(preferences({ sign_icons = {} }))

lsp.setup_nvim_cmp({
	mapping = cmp_mappings
})

lsp.on_attach(function(client, bufnr)
	print("help")
	local opts = { buffer = bufnr, remap = false}

	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
	vim.keymap.set("n", "<leader>vd", function() vim.lsp.diagnostic.open_float() end, opts)
	vim.keymap.set("n", "[d", function() vim.lsp.diagnostic.goto_next() end, opts)
	vim.keymap.set("n", "]d", function() vim.lsp.diagnostic.goto_next() end, opts)
	vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
	vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
	vim.keymap.set("n", "<leader>vrn", function() vim.lsp.but.rename() end, opts)
	vim.keymap.set("n", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)	

lsp.setup()

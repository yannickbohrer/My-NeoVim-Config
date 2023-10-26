local lsp = require('lsp-zero').preset({})

lsp.ensure_installed({
	'tsserver',
	'eslint',
	'rust_analyzer',
	'clangd',
	'pyright',
	'kotlin_language_server',
	'angularls',
	'docker_compose_language_service',
	'html'
})

lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({ buffer = bufnr })

	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "<leader>h", function() vim.lsp.buf.hover() end, opts)
end)


-- When you don't have mason.nvim installed
-- You'll need to list the servers installed in your system
lsp.setup_servers({ 'tsserver', 'eslint' })

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

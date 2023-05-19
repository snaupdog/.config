require("mason").setup()
require("mason-lspconfig").setup()

require("mason-lspconfig").setup {




    ensure_installed = { "lua_ls","pyright","clangd"},
}

vim.keymap.set("n", "gd", "<cmd>Lspsaga lsp_finder<CR>", { silent = true })
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<cr>', { silent = true })


local capabilities =require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup{
    capabilities = capabilities,
}
require("lspconfig").clangd.setup{
    capabilities = capabilities,

}

require("lspconfig").pyright.setup{
    capabilities = capabilities,

}

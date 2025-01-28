local lsp_zero = require('lsp-zero')
lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require("mason-lspconfig").setup_handlers({
function(server_name) -- default handler (optional)
    if server_name == "tsserver" then
        server_name = "ts_ls"
    end
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    require("lspconfig")[server_name].setup({
    capabilities = capabilities,
})
end,
})

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {},
  handlers = {
    lsp_zero.default_setup,
  },
})

vim.g.lsp_zero_extend_lspconfig=0


local lspconfig = require('lspconfig')

local MY_FQBN = "arduino:avr:nano:cpu=atmega328old"
lspconfig.arduino_language_server.setup {
    cmd = {
        "arduino-language-server",
        "-cli-config", "~/.arduino15/arduino-cli.yaml",
        "-fqbn",
        MY_FQBN
    }
}


vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>s', vim.lsp.buf.hover , {buffer=arg.buf})
vim.keymap.set('n','<leader>rn',vim.lsp.buf.rename,{})
vim.keymap.set('n','gd',vim.lsp.buf.definition,{})
vim.keymap.set('n','gi',vim.lsp.buf.implementation,{})
vim.keymap.set('n','gr',require('telescope.builtin').lsp_references,{})



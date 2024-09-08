local lsp_zero = require('lsp-zero')
lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {},
  handlers = {
    lsp_zero.default_setup,
  },
})

vim.g.lsp_zero_extend_lspconfig=0


local lspconfig = require('lspconfig')

lspconfig.tsserver.setup{
    init_options = {
        prefreneces = {
            disableSuggestions=true
        }
    }

}
local MY_FQBN = "esp32:esp32:esp32"
lspconfig.arduino_language_server.setup {
    cmd = {
        "arduino-language-server",
        "-cli-config", "~/.arduino15/arduino-cli.yaml",
        "-fqbn",
        MY_FQBN
    }
}


vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>bf', vim.lsp.buf.hover , {buffer=arg.buf})


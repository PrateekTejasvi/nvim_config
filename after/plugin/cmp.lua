  -- Setup lspconfig.
--[[   local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()) ]]
--[[   local capabilities = require('cmp_nvim_lsp').cmp_vim_lsp.default_capabilitie(vim.lsp.protocol.make_client_capabilities()) ]]
  local capabilities = require('cmp_nvim_lsp').default_capabilities()
  local cmp = require("cmp")
  local lsp_zero = require('lsp-zero')
  require("luasnip.loaders.from_vscode").lazy_load()

  lsp_zero.extend_lspconfig()
  require('lspconfig')['clangd'].setup {
    capabilities = capabilities

  }


local present, cmp = pcall(require, "cmp")

if not present then
  return
end


vim.o.completeopt = "menu,menuone,noselect,preview"


cmp.setup({
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
      ["<S-Tab>"] = cmp.mapping.select_prev_item(),
      ["<Tab>"] = cmp.mapping.select_next_item(),
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'luasnip' }, -- For luasnip users.
      {name = 'path'},
      {name = "nvim_lua"}
    }, {
      { name = 'buffer' },
    })
})

local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "tsserver", "clangd" }
lspconfig.emmet_ls.setup({
    capabilities = capabilities,
    filetypes = { "html", "css", "javascript", "typescript", "scss"},
    init_options = {
      html = {
        options = {
          -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
          ["bem.enabled"] = true,
        },
      },
    }
})
for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities,
        -- cmd = {
        --     "clangd",
        --     "--offset-encoding=utf-16",
        -- },
    }
end


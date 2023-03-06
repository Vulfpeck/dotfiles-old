local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "marksman",
  "bashls",
  "eslint",
  "gopls",
  "graphql",
  "html",
  "kotlin_language_server",
  "sumneko_lua",
  "pylsp",
  "sqls",
  "tailwindcss",
  "tsserver",
  "yamlls",
  "rust_analyzer",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = function(client, bufnr)
      on_attach(client, bufnr)
      if lsp == "null-ls" then
        -- client.resolved_capabilities.document_formatting = true
        -- client.resolved_capabilities.document_range_formatting = true
        client.server_capabilities.documentFormattingProvider = true
        client.server_capabilities.documentRangeFormattingProvider = true
      end
    end,
    capabilities = capabilities,
    single_file_support = true,
  }
end

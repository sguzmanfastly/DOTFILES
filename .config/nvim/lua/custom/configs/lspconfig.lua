local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require 'lspconfig'

lspconfig.dockerls.setup({
  on_attach = on_attach,
  capabilities = capabilities
})

lspconfig.docker_compose_language_service.setup({
  on_attach = on_attach,
  capabilities = capabilities
})

lspconfig.omnisharp.setup({
  cmd = { "dotnet", "/home/ivansegufer/.local/share/nvim/mason/packages/omnisharp/libexec/OmniSharp.dll" },
  enable_roslyn_analyzers = false,
  enable_import_completion = true
})

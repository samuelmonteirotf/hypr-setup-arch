-- =========================================
-- LSP Configuration — Samuel Monteiro Setup
-- Totalmente compatível com Neovim 0.9+ e lspconfig >=0.11
-- =========================================

-- Garante que o Mason esteja inicializado
pcall(require, "mason")
pcall(require("mason").setup)

-- Tenta importar a nova API, com fallback para compatibilidade
local lspconfig = vim.lsp and vim.lsp.config or require("lspconfig")

if not lspconfig then
  vim.notify("❌ Erro: nvim-lspconfig não encontrado!", vim.log.levels.ERROR)
  return
end

-- Capabilities para autocompletar (nvim-cmp)
local has_cmp, cmp_lsp = pcall(require, "cmp_nvim_lsp")
local capabilities = has_cmp and cmp_lsp.default_capabilities() or vim.lsp.protocol.make_client_capabilities()

-- Lista de servidores ativos (exatamente como aparecem no :Mason)
local servers = {
  lua_ls,    -- Lua Language Server
  bashls,    -- Bash
  clangd,    -- C/C++
  pyright,   -- Python
}

-- Função de configuração geral para cada LSP
local function setup_server(name)
  if type(name) ~= "string" then return end
  local ok, server = pcall(function() return require("lspconfig")[name] end)
  if ok and server then
    server.setup({
      capabilities = capabilities,
      on_attach = function(_, bufnr)
        local map = function(mode, lhs, rhs)
          vim.keymap.set(mode, lhs, rhs, { noremap = true, silent = true, buffer = bufnr })
        end

        map("n", "gd", vim.lsp.buf.definition)
        map("n", "gr", vim.lsp.buf.references)
        map("n", "K", vim.lsp.buf.hover)
        map("n", "<leader>rn", vim.lsp.buf.rename)
        map("n", "<leader>ca", vim.lsp.buf.code_action)
      end,
    })
  else
    vim.notify("⚠️ Servidor LSP '" .. tostring(name) .. "' não encontrado.", vim.log.levels.WARN)
  end
end

-- Configura todos os servidores instalados
for _, server in ipairs(servers) do
  setup_server(server)
end

-- ==========================
-- Autocompletar com nvim-cmp
-- ==========================
local cmp_ok, cmp = pcall(require, "cmp")
if cmp_ok then
  cmp.setup({
    mapping = cmp.mapping.preset.insert({
      ["<C-Space>"] = cmp.mapping.complete(),
      ["<CR>"] = cmp.mapping.confirm({ select = true }),
      ["<C-e>"] = cmp.mapping.abort(),
    }),
    sources = cmp.config.sources({
      { name = "nvim_lsp" },
      { name = "buffer" },
      { name = "path" },
    }),
  })
end


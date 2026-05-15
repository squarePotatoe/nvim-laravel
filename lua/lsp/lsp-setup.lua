require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {"eslint", "stylua"},
})   

vim.lsp.config("eslint", {
  settings = {
    workingDirectories = { mode = "auto" },
    format = true, -- Disable if using null-ls or Prettier
  },
  on_attach = function(client, bufnr)
    -- Optional: Auto-fix on save
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      command = "EslintFixAll",
    })
  end,
})   

return {
  {
    "neovim/nvim-lspconfig",
    init = function()
      -- cspell_ls uses the new Neovim 0.11 native LSP API (lsp/ directory),
      -- so it must be configured via vim.lsp.config instead of opts.servers
      vim.lsp.config("cspell_ls", {
        filetypes = {
          "python", "lua", "javascript", "javascriptreact",
          "typescript", "typescriptreact", "rust",
          "gitcommit", "json", "yaml",
        },
        settings = {
          cSpell = {
            language = "en,uk",
          },
        },
      })
      vim.lsp.enable("cspell_ls")
    end,
  },
}

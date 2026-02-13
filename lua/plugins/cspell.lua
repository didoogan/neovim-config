return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        cspell_ls = {
          filetypes = {
            "python", "lua", "javascript", "javascriptreact",
            "typescript", "typescriptreact", "rust",
            "markdown", "text", "gitcommit", "json", "yaml",
          },
        },
      },
    },
  },
}

-- ~/.config/nvim/lua/plugins/ltex.lua
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ltex = {
          filetypes = {
            "markdown", "text", "gitcommit",
            "python", "javascript", "javascriptreact",
            "typescript", "typescriptreact", "rust",
          },
          settings = {
            ltex = {
              language = "en-US",
              diagnosticSeverity = "warning",
              enabled = {
                "bibtex", "gitcommit", "markdown", "org", "tex",
                "restructuredtext", "rsweave", "latex", "quarto",
                "rmd", "context", "html", "xhtml", "mail", "plaintext",
                "python", "javascript", "javascriptreact",
                "typescript", "typescriptreact", "rust",
              },
            },
          },
        },
      },
    },
  },
}

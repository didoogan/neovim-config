-- ~/.config/nvim/lua/plugins/python.lua
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Disable pylsp (replaced by ruff + pyright)
        pylsp = { enabled = false },
        -- Pyright: completions, hover, go-to-def only — no type checking (ruff handles diagnostics)
        pyright = {
          settings = {
            python = {
              analysis = {
                diagnosticMode = "openFilesOnly",
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
                extraPaths = { "src" },
              },
            },
          },
        },
        -- Standalone ruff LSP: Rust-based, covers linting + import sorting diagnostics
        ruff = {
          capabilities = {
            general = { positionEncodings = { "utf-16" } },
          },
          init_options = {
            settings = {
              lineLength = 120,
            },
          },
        },
      },
    },
  },
}

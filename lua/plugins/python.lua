-- ~/.config/nvim/lua/plugins/python.lua
return {
  -- Configure nvim-lspconfig for pylsp
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pylsp = {
          settings = {
            pylsp = {
              plugins = {
                pycodestyle = { enabled = false }, -- Disable pycodestyle
                isort = { enabled = true, line_length = 120 }, -- Enable isort for import sorting
                ruff = { enabled = true, lineLength = 120 }, -- Enable Ruff for linting
              },
            },
          },
        },
      },
    },
  },
}

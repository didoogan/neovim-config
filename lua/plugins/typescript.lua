-- ~/.config/nvim/lua/plugins/typescript.lua
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ts_ls = {
          root_dir = require("lspconfig.util").root_pattern(
            "tsconfig.json",
            "package.json",
            "vite.config.ts",
            "vite.config.js",
            "next.config.js",
            ".git"
          ),
        },
      },
    },
  },
}

-- ~/.config/nvim/lua/plugins/typescript.lua
local root = require("config.root")

return {
  {
    "neovim/nvim-lspconfig",
    -- opts = {
    --   servers = {
    --     tsserver = {
    --       root_dir = root.get_root_dir(),
    --     },
    --   },
    -- },
  },
}

local util = require("lspconfig.util")

-- Custom root detection logic
local function custom_root_patterns()
  return {
    -- Typical frontend project files
    "tsconfig.json",
    "package.json",
    "vite.config.ts",
    "vite.config.js",
    "next.config.js",
    ".git", -- only include .git if you want monorepo fallback
  }
end
-- Patch LSP root dir detection for tsserver and others
require("lspconfig").tsserver.setup({
  root_dir = util.root_pattern(unpack(custom_root_patterns())),
})

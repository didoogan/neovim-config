-- plugins/lsp.lua
return {
  { "mason-org/mason.nvim", config = true },
  {
    "mason-org/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        automatic_installation = true,
      })
    end,
  },
  -- Disable inlay hints globally to avoid Neovim 0.11 + noice.nvim crash:
  -- the inlay hint decoration provider fires during nui popup redraws
  -- with invalid col positions (nvim_buf_set_extmark "Invalid 'col': out of range").
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
    },
  },
}

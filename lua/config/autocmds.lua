-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
-- Limit LSP hover/signature popup width to avoid huge Pydantic-style signatures
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
  vim.lsp.handlers.signature_help,
  { max_width = 80 }
)
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
  vim.lsp.handlers.hover,
  { max_width = 80 }
)

vim.api.nvim_create_autocmd({ "CursorHold" }, {
  callback = function()
    if vim.o.buftype ~= "nofile" then
      vim.cmd("checktime")
    end
  end,
})

-- Stop pylsp if it somehow attaches (replaced by ruff LSP)
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client and client.name == "pylsp" then
      vim.lsp.stop_client(client.id)
    end
  end,
})

-- Auto-resize ToggleTerm terminals when they open
-- vim.api.nvim_create_autocmd({ "TermOpen", "WinEnter" }, {
--   pattern = "term://*",
--   callback = function()
--     local bufname = vim.api.nvim_buf_get_name(0)
--     if bufname:match("term://") then
--       vim.cmd("resize 15")
--     end
--   end,
-- })

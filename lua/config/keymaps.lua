-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("t", "\033", "<C-\\><C-n>", { noremap = true, silent = true, desc = "Exit terminal mode" })

vim.keymap.set("n", "<leader>gw", "<cmd>DiffviewFileHistory %<cr>", {
  desc = "File History (Diffview)",
})
vim.keymap.set("n", "<leader>gW", "<cmd>DiffviewFileHistory<cr>", {
  desc = "Repository History (Diffview)",
})

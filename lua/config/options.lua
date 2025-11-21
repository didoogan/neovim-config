-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.guicursor = {
  "n-v-c:block", -- Normal, Visual, Command: block cursor
  "i-ci-ve:ver25", -- Insert, Command Insert, Visual Ex: vertical bar cursor
  "r-cr:hor20", -- Replace modes: horizontal underline cursor
  "o:hor50", -- Operator-pending: half-height underline
  "a:blinkwait700-blinkon400-blinkoff250", -- blinking behavior
  "sm:block-blinkwait175-blinkon150-blinkoff150",
}

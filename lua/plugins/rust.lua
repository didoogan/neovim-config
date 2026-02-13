return {
  {
    "mrcjkb/rustaceanvim",
    version = "^5",
    lazy = false,
    ft = { "rust" },
    init = function()
      vim.g.rustaceanvim = {
        server = {
          on_attach = function(_, bufnr)
            vim.keymap.set("n", "<Leader>rh", function()
              vim.cmd.RustLsp({ "hover", "actions" })
            end, { buffer = bufnr, desc = "Rust Hover Actions" })
            vim.keymap.set("n", "<Leader>ra", function()
              vim.cmd.RustLsp("codeAction")
            end, { buffer = bufnr, desc = "Rust Code Actions" })
          end,
        },
      }
    end,
  },
}

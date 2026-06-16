vim.pack.add({
  -- Mason
  {
    src = "https://github.com/williamboman/mason.nvim",
  },

  -- LSP bridge
  {
    src = "https://github.com/williamboman/mason-lspconfig.nvim",
  },

  -- Neovim LSP config
  {
    src = "https://github.com/neovim/nvim-lspconfig",
  },
})

require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = {
    "ts_ls",
    "lua_ls",
  },
})

vim.lsp.enable("ts_ls")
vim.lsp.enable("lua_ls")

vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "K", vim.lsp.buf.hover)

vim.pack.add({
  'https://github.com/akinsho/bufferline.nvim',
  'https://github.com/nvim-tree/nvim-web-devicons',
})
require("bufferline").setup({
  options = {
    offsets = {
      {
        filetype = "NvimTree",
        text = "Explorer",
        highlight = "Directory",
        separator = true,
      }
    },
  },
})
vim.pack.add({
  {
    src = "https://github.com/folke/tokyonight.nvim",
  }
})
require('tokyonight').setup {
  styles = {
    comments = { italic = false }, -- Disable italics in comments
  },
}


vim.pack.add({ { src = "https://github.com/catppuccin/nvim", name = "catppuccin" } })

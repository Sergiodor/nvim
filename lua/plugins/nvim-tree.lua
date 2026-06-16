vim.pack.add({
  'https://github.com/nvim-tree/nvim-tree.lua',
  "https://github.com/nvim-tree/nvim-web-devicons",
})
require("nvim-tree").setup({
  view = {
    width = 35,
    side = "left",
  },
  renderer = {
    group_empty = true,
    indent_markers = {
      enable = true,
    },
    icons = {
      glyphs = {
        folder = {
          arrow_open = "⤹",
        }
      }
    }
  },
  actions = {
    open_file = {
      window_picker = {
        enable = false,
      },
    },
  },
  filters = {
    dotfiles = false,
    git_ignored = false,
  },
  git = {
    ignore = false,
  },
})

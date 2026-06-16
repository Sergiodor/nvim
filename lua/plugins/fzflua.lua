vim.pack.add({
  {
    src = 'https://github.com/ibhagwan/fzf-lua',
  },
})

require('fzf-lua').setup({
  -- Customizing window options
  winopts = {
    height     = 0.85,
    width      = 0.80,
    preview = {
      layout   = 'vertical',
      vertical = 'down:45%',
    },
  },
  -- Use fzf-lua for vim.ui.select (replaces default dropdowns)
  ui_select = true,
})
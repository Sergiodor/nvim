vim.pack.add({
    { src = 'https://github.com/lewis6991/gitsigns.nvim'},
    { src = 'https://github.com/sindrets/diffview.nvim'},
})

require("gitsigns").setup({})
require("diffview").setup({
    diff_binaries = false,
    use_icons = true,
    icons = {
        folder_closed = "◼",
        folder_open = "◻",
    },
    signs = {
        fold_closed = "▸",
        fold_open = "▿",
        done = "✅",
    },
})

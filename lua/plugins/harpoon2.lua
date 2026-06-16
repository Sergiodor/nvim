vim.pack.add({
    { src = 'https://github.com/ThePrimeagen/harpoon', version = 'harpoon2' },
    { src = 'https://github.com/nvim-lua/plenary.nvim' }, --used by harpoon2
})

require("harpoon").setup({})

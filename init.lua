 -- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.mapleader = " "

require("configs")

-- diagnostic related config
require("diagnostic-conf")

-- Plugins
require("plugins")

require('lualine')

require('keymaps')

require('autocmds')

-- https://github.com/jdhao/nvim-config/blob/main/lua/plugin_specs.lua


-- Plugins
require("plugins.nvim-tree")
require("plugins.whitespace")
require("plugins.lualine")
require("plugins.fzflua")
require("plugins.bufferline")
require("plugins.todo")

require("plugins.theme")
--vim.cmd.colorscheme 'tokyonight-storm'
--vim.cmd.colorscheme "tokyonight"
vim.cmd.colorscheme("catppuccin-nvim")

require("plugins.autopairs")
require("plugins.mason")
require("plugins.scroolview")
require("plugins.which-key")
require("plugins.smear-cursor")
require("plugins.harpoon2")
require("plugins.alpha")
require("plugins.dap")
require("plugins.multicursor")
require("plugins.blink-cmp")
require("plugins.indent")
require("plugins.auto-session")
require("plugins.bufferline")
--require("plugins.barbar") -- conflict with bufferline
require("plugins.git")
-- require("plugins.treesitter")



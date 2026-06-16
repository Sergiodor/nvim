-- New UI opt-in
require('vim._core.ui2').enable({})

local opt = vim.opt

opt.clipboard = "unnamedplus"
opt.fileencoding = "utf-8"
opt.mouse = 'a'
opt.undofile = true

opt.number = true -- Show line numbers
opt.numberwidth = 2
--opt.relativenumber = true -- Show relative line numbers
--opt.guicursor = "i:block" -- Use block cursor in insert mode
opt.cursorline = true -- Highlight the current line
opt.wrap = false -- Disable line wrapping
opt.scrolloff = 8 -- Keep 8 lines above and below the cursor
opt.sidescrolloff = 10

opt.tabstop = 2 -- Number of spaces for a tab
opt.shiftwidth = 2 -- Number of spaces for autoindent
opt.softtabstop = 2 -- Number of spaces for a tab when editing
opt.smartindent = true
opt.autoindent = true -- Enable auto indentation
opt.numberwidth = 2 -- Width of the line number column
opt.expandtab = true -- Use spaces instead of tabs
opt.smarttab = true

opt.ignorecase = true -- Ignore case in search
opt.hlsearch = true -- enable highlighting of search results
opt.incsearch = true -- enable highlighting of search results

opt.signcolumn = "yes:1" -- Always show sign column
opt.colorcolumn = "120" -- Highlight column 120
opt.showmatch = true
--opt.cmdheight = 1

opt.termguicolors = true -- Enable true colors
opt.winborder = "rounded" -- Use rounded borders for windows

--opt.list = true -- Show whitespace characters

opt.fillchars = { eob = " "}

opt.swapfile = false -- Disable swap files
opt.shiftround = true -- Round indent to multiple of shiftwidth
--opt.listchars = "tab: ,multispace:|   ,eol:󰌑" -- Characters to show for tabs, spaces, and end of line
opt.inccommand = "nosplit" -- Shows the effects of a command incrementally in the buffer
opt.completeopt = { "menuone", "popup", "noinsert" } -- Options for completion menu

vim.cmd.filetype("plugin indent on") -- Enable filetype detection, plugins, and indentation

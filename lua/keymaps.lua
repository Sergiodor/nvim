local keymap = vim.keymap.set
local s = { silent = true }
local opts = { noremap = true, silent = true }

keymap("n", "<space>", "<Nop>")

keymap("n", "<Leader>e", ":NvimTreeToggle  toggle<CR>", opts)
-- Quit all opened buffers
keymap("n", "<leader>Q", "<cmd>qa!<cr>", { silent = true, desc = "quit nvim" })
-- keymap("n", "<Leader>q", "<cmd>q<CR>", s) -- Quit Neovim
keymap("n", "<Leader>w", "<cmd>w!<CR>", s) -- Save the current file

-- Remove trailing whitespace characters
keymap("n", "<leader>ts", "<cmd>StripTrailingWhitespace<cr>", { desc = "remove trailing space" })
-- whitespace
--keymap('n', '<Leader>t', require('whitespace-nvim').trim)

-- Clear highlights on search when pressing <Esc> in normal mode
-- See `:help hlsearch`
keymap('n', '<Esc>', '<cmd>nohlsearch<CR>')

--  See `:help wincmd` for a list of all window commands
keymap('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
keymap('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
keymap('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
keymap('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- tabs
keymap("n", "<Leader>te", "<cmd>tabnew<CR>", s)
keymap("n", "<leader>tn", ":bnext<CR>", s)
keymap("n", "<Leader>tp", ":bprevious<CR>", s)
keymap("n", "<Leader>tc", ":tabclose<CR>", s)

--- split windows
keymap("n", "<Leader>sv", "<cmd>vsplit<CR>", s)
keymap("n", "<Leader>sh", "<cmd>split<CR>", s)

-- fzf-lua
keymap("n", "<leader>ff", "<cmd>FzfLua files<CR>")
keymap("n", "<leader>fg", "<cmd>FzfLua live_grep<CR>")

-- harpoon
local harpoon = require("harpoon")
keymap("n", "<leader>ha", function() harpoon:list():add() end)
keymap("n", "<leader>hl", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

-- Move selected line / block of text in visual mode
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

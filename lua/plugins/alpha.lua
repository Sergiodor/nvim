vim.pack.add({
  -- Mason
  {
    src = "https://github.com/goolord/alpha-nvim",
  }
})


local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = {
    "                                                     ",
    "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
    "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
    "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
    "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
    "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
    "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
    "                                                     ",
    "⠀⠀⠀⠀⠀⠀⠀⠀ ❤🧡💛💚💙💜🖤🤍                       ",
}

local harpoon = require("harpoon")

-- Set menu
dashboard.section.buttons.val = {
  dashboard.button( "e", "  > New file" , ":ene <BAR> startinsert <CR>"),
  dashboard.button( "f", "  > Find file", "<cmd>FzfLua files<CR>"),
  dashboard.button( "r", "↺  > Restore session", ":AutoSession<CR>"),
  dashboard.button( "h", "⇌  > Harpooned", function()
    harpoon.ui:toggle_quick_menu(harpoon:list())
  end),
  dashboard.button( "s", "  > Settings" , ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
  dashboard.button( "q", "✖  > Quit NVIM", ":qa<CR>"),
}

-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
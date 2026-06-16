vim.pack.add({
  {
    src = "https://github.com/lukas-reineke/indent-blankline.nvim",
  },
})

local highlight = {
  "RainbowCyan",
  "RainbowBlue",
  "RainbowGreen",
  "RainbowViolet",
  "RainbowYellow",
  "RainbowOrange",
  "RainbowRed",
}

local hooks = require "ibl.hooks"
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#294144" }) -- 56B6C2
  vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#305775" }) -- 61AFEF
  vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#506841" }) -- 98C379
  vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#56365F" }) -- C678DD
  vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#957E50" }) -- E5C07B
  vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#906C48" }) -- D19A66
  vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#7C3A3F" }) -- E06C75
end)

require("ibl").setup { indent = { highlight = highlight } }

vim.pack.add({
	{
		src = "https://github.com/saghen/blink.cmp",
		version = vim.version.range("^1"),
	},
})

require("blink.cmp").setup({
  keymap = { preset = "super-tab" },
  appearance = {
    nerd_font_variant = "mono",
    use_nvim_cmp_as_default = false,
  },
  completion = {
    menu = { auto_show = true },
    documentation = { auto_show = true },
    ghost_text = {
      enabled = false,
      show_with_menu = false,
    },
    accept = {
      auto_brackets = {
        enabled = true,
      },
    },
  },
  sources = {
    default = { "lsp", "path", "snippets", "buffer" },
    providers = {
      lsp = {
        opts = {
          tailwind_color_icon = "!"
        }
      }
    }
  },
  fuzzy = { implementation = "prefer_rust_with_warning" },
})

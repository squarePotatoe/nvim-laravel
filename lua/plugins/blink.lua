local cmp = require("blink.cmp")
cmp.setup({
	keymap = {
		preset = "default",
		["<Tab>"] = { "accept", "fallback" },
		["<C><leader>"] = { "show" },
	},
	appearance = {
		nerd_font_variant = "mono",
	},
	sources = {
		default = { "lsp", "path", "snippets", "buffer" },
	},
	completion = {
		documentation = {
			auto_show = true,
			auto_show_delay_ms = 200,
		},
		accept = {
			auto_brackets = { enabled = true },
		},
	},
})

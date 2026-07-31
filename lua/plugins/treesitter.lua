require("nvim-treesitter.config").setup({
	ensure_installed = {
		"php",
		"vue",
		"javascript",
		"typescript",
		"html",
		"css",
		"json",
		"lua",
		"bash",
	},
	highlight = { enable = true },
	indent = { enable = true },
})

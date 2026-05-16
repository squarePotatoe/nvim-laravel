require("conform").setup({
	formatter_by_ft = {
		lua = { "stylua" },
		javascript = { "prettierd", "prettier", stop_after_first = true },
		json = { "prettierd", "prettier", stop_after_first = true },
		vue = { "prettierd", "prettier", stop_after_first = true },
		php = { "pint" },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
	},
	default_format_ops = {
		lsp_format = "fallback",
	},
})

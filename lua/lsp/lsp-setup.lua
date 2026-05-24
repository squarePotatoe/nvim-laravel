require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "eslint", "stylua", "vue_ls", "ts_ls", "intelephense" },
})

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

vim.lsp.config("eslint", {
	settings = {
		workingDirectories = { mode = "auto" },
		format = false, -- Disable if using null-ls or Prettier
	},
	on_attach = function(_, bufnr)
		vim.api.nvim_create_autocmd("BufWritePre", {
			buffer = bufnr,
			callback = function(args)
				require("conform").format({ bufnr = args.buf })
			end,
		})
	end,
})

vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			runtime = { verstion = "LuaJIT" },
			workspace = {
				checkThirdParty = false,
				library = vim.api.nvim_get_runtime_file("", true),
			},
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})

vim.lsp.config("intelephense", {
	settings = {
		intelephense = {
			files = {
				maxSize = 2000000,
			},
		},
	},
})

vim.lsp.config("vue_ls", {})

vim.lsp.config("ts_ls", {
	init_options = {
		plugins = {
			{
				name = "@vue/typescript-plugin",
				location = vim.fn.expand(
					"$HOME/.local/share/nvim/mason/packages/vue-language-server/node_modules/@vue/language-server"
				),
				languages = { "vue" },
			},
		},
	},
	filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
})

vim.diagnostic.config({
	virtual_text = true,
	underlin = true,
})

vim.lsp.enable({
	"eslint",
	"lua_ls",
	"tailwindcss",
	"intelephense",
	"laravel_ls",
	"vue_ls",
	"ts_ls",
})

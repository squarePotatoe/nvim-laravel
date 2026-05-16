vim.pack.add({
	"https://github.com/ibhagwan/fzf-lua",
	{
		src = "https://github.com/nvim-treesitter/nvim-treesitter",
		branch = "main",
		build = ":TSUpdate",
	},
	"https://github.com/mason-org/mason.nvim",
	"https://github.com/neovim/nvim-lspconfig",
	"https://github.com/lewis6991/gitsigns.nvim",
	"https://github.com/mason-org/mason-lspconfig.nvim",
	{
		src = "https://github.com/saghen/blink.cmp",
		version = vim.version.range("^1"),
	},
	"https://github.com/stevearc/conform.nvim",
	"https://github.com/windwp/nvim-ts-autotag",
	"https://github.com/nvim-lua/plenary.nvim.git",
})

local function packadd(name)
	vim.cmd("packadd " .. name)
end

packadd("fzf-lua")
packadd("nvim-treesitter")
packadd("mason.nvim")
packadd("nvim-lspconfig")
packadd("gitsigns.nvim")
packadd("mason-lspconfig.nvim")
packadd("blink.cmp")
packadd("nvim-ts-autotag")
packadd("plenary.nvim")
-----------------
-- CONFORM added directly to .local/share/nvim/site/pack/conform/start/conform.nvim
-- from Git repo
--
-- git clone --depth=1 https://github.com/stevearc/conform.nvim.git "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/pack/conform/start/conform.nvim
--
-----------------

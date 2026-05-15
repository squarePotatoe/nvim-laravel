vim.pack.add({
    "https://github.com/ibhagwan/fzf-lua",
    {
        src = 'https://github.com/nvim-treesitter/nvim-treesitter',
        branch = 'main',
        build = ':TSUpdate'
    },
    "https://github.com/mason-org/mason.nvim",
    "https://github.com/neovim/nvim-lspconfig",
    "https://github.com/lewis6991/gitsigns.nvim",
    "https://github.com/mason-org/mason-lspconfig.nvim",
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

-- require("mason").setup({})
-- require("fzf-lua").setup({})
--
-- -- FZF-KEYMAPS
-- vim.keymap.set("n", "<leader>ff", function()
-- 	require("fzf-lua").files()
-- end, { desc = "FZF Files" })
-- vim.keymap.set("n", "<leader>fg", function()
-- 	require("fzf-lua").live_grep()
-- end, { desc = "FZF Live Grep" })
-- vim.keymap.set("n", "<leader>fb", function()
-- 	require("fzf-lua").buffers()
-- end, { desc = "FZF Buffers" })
-- vim.keymap.set("n", "<leader>fh", function()
-- 	require("fzf-lua").help_tags()
-- end, { desc = "FZF Help Tags" })
-- vim.keymap.set("n", "<leader>fx", function()
-- 	require("fzf-lua").diagnostics_document()
-- end, { desc = "FZF Diagnostics Document" })
-- vim.keymap.set("n", "<leader>fX", function()
-- 	require("fzf-lua").diagnostics_workspace()
-- end, { desc = "FZF Diagnostics Workspace" })

-- GitSigns
-- require("gitsigns").setup({
-- 	signs = {
-- 		add = { text = "\u{2590}" }, -- ▏
-- 		change = { text = "\u{2590}" }, -- ▐
-- 		delete = { text = "\u{2590}" }, -- ◦
-- 		topdelete = { text = "\u{25e6}" }, -- ◦
-- 		changedelete = { text = "\u{25cf}" }, -- ●
-- 		untracked = { text = "\u{25cb}" }, -- ○
-- 	},
-- 	signcolumn = true,
-- 	current_line_blame = false,
-- })



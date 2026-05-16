vim.g.mapleader = " "

vim.keymap.set('i', 'jj', '<Esc>', { desc = 'Exit Insert mode' })
vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = 'Write changes' })
vim.keymap.set('n', '<leader>c', ':nohlsearch<CR>', { desc = 'Clear search highlights' })

vim.keymap.set('n', '<leader>x', '"_d', { desc = 'Delete without yanking' })
vim.keymap.set('n', '<leader>bp', ':bprevious<CR>', { desc = 'Previous buffet' })
vim.keymap.set('n', '<leader>bn', ':bnext<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<leader>bd', ':bdelete<CR>', { desc = 'Remove current buffer' })


vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move between windows left' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move between windows bottom' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move between windows up' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move between windows rigth' })

vim.keymap.set('n', '<leader>sv', ':vsplit<CR>', { desc = 'Split vertically' })
vim.keymap.set('n', '<leader>sh', ':split<CR>', { desc = 'Split window horizontally' })

vim.keymap.set('n', '<C-Up>', ':resize +2<CR>', { desc = 'Split window horizontally' })
vim.keymap.set('n', '<C-Down>', ':resize -2<CR>', { desc = 'Split window horizontally' })
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', { desc = 'Split window horizontally' })
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', { desc = 'Split window horizontally' })

vim.keymap.set('n', '<A-j>', ":m .+1<CR>==", { desc = 'Split window horizontally' })
vim.keymap.set('n', '<A-k>', ":m .-2<CR>==", { desc = 'Split window horizontally' })
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", { desc = 'Split window horizontally' })
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", { desc = 'Split window horizontally' })

vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic" })
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Prev diagnostic" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Diagnostic list" })

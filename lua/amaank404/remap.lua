vim.g.mapleader = " "

-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>fu", "<cmd>tcd ~<CR>")
vim.keymap.set("n", "<leader>fp", "<cmd>tcd ~/Desktop<CR>")

-- The following keybindings are for window resizing shortcuts
vim.keymap.set("n", "<leader>-", "<cmd>resize -5<CR>")
vim.keymap.set("n", "<leader>=", "<cmd>resize +5<CR>")
vim.keymap.set("n", "<leader>]", "<cmd>vertical resize +10<CR>")
vim.keymap.set("n", "<leader>[", "<cmd>vertical resize -10<CR>")

-- For easier window movement
vim.keymap.set("n", "<leader>u", "<C-W>h")
vim.keymap.set("n", "<leader>i", "<C-W>j")
vim.keymap.set("n", "<leader>o", "<C-W>k")
vim.keymap.set("n", "<leader>p", "<C-W>l")

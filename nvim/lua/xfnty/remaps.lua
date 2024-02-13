
vim.g.mapleader = " "
vim.keymap.set("n", "<C-p>", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<C-y>", "\"+y")
vim.keymap.set("v", "<C-y>", "\"+y")
vim.keymap.set("n", "<C-Y>", "\"+Y")
vim.keymap.set("n", "<C-h>", ":%s/\\<<C-r><C-w>\\>//g<left><left>")

vim.g.mapleader = " "
-- open directory explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- replace jump half page with jump half page and centre
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- yank into system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

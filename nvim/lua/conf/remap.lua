vim.g.mapleader = " "
vim.keymap.set("i", "jj", "<ESC>")
vim.keymap.set("i", "<C-Backspace>", "<C-w>")
vim.keymap.set("n", "<leader>pf", vim.cmd.Ex)
vim.api.nvim_set_keymap(
	"n",
	"<F10>",
	":vsplit | term g++ -std=c++17 -Wall -fmax-errors=1000 % && ./a.out<CR>",
	{ noremap = false, silent = true }
)

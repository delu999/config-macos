--vim.o.autocomplete = true
vim.o.winborder = "rounded"
vim.o.clipboard = 'unnamedplus'
vim.o.shiftwidth = 4
vim.o.number = true
vim.o.relativenumber = true
vim.o.termguicolors = true
vim.o.confirm = true
vim.o.signcolumn = 'yes'
vim.o.completeopt = 'fuzzy,menu,menuone,popup'
vim.o.complete = 'o'

vim.g.mapleader = " "
vim.g.maplocalleader = " "


vim.keymap.set("n", "<leader>w", ":write<CR>")
vim.keymap.set("n", "<leader>q", ":quit<CR>")
vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format)
vim.keymap.set("n", "<leader>e", ":Oil<CR>")
vim.keymap.set("n", "<leader>bd", ":bd<CR>")
vim.keymap.set("n", "<leader>f", "<cmd>Pick files<CR>")
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>")

-- Navigation between tab buffers with F1:prevbuffer and F2:nextbuffer
vim.keymap.set({"n", "t"}, "<F1>", ":bprevious<CR>")
vim.keymap.set({"n", "t"}, "<F2>", ":bnext<CR>")
vim.keymap.set("t", "<F1>", "<C-\\><C-n><cmd>bprevious<CR>")
vim.keymap.set("t", "<F2>", "<C-\\><C-n><cmd>bnext<CR>")
vim.keymap.set("i", "<F1>", "<Esc><cmd>bprevious<CR>")
vim.keymap.set("i", "<F2>", "<Esc><cmd>bnext<CR>")



vim.pack.add({
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/folke/tokyonight.nvim" },
	{ src = "https://github.com/stevearc/oil.nvim" },
	{ src = "https://github.com/echasnovski/mini.nvim" },
})

require "mini.tabline".setup()
require "mini.pick".setup()
require "mini.ai".setup()
require "mini.surround".setup()
require "oil".setup()


vim.cmd.colorscheme("tokyonight")
vim.lsp.enable({ "clangd", "lua_ls", "basedpyright" })

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set notermguicolors")
vim.cmd("set number")

-- Switch to different buffer and close the previous buffer
vim.keymap.set("n", "<A-n>", ':b#|bd#<CR>', { silent = true })

-- Move current line up or down in normal mode
vim.api.nvim_set_keymap("n", "J", ":m .+1<CR>==", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "K", ":m .-2<CR>==", { noremap = true, silent = true })

-- Move selected lines up or down in visual mode
vim.api.nvim_set_keymap("x", "J", ":move '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "K", ":move '<-2<CR>gv=gv", { noremap = true, silent = true })

-- Save buffer with Ctrl+S
vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-s>", "<Esc>:w<CR>a", { noremap = true, silent = true })

-- Split window navigation using Ctrl + {h,j,k,l}
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })

-- Close current buffer with Ctrl+Q
vim.api.nvim_set_keymap("n", "<C-q>", ":bd<CR>", { noremap = true, silent = true })

-- Jump to next issue in file
vim.keymap.set("n", "]g", vim.diagnostic.goto_next)
vim.keymap.set("n", "{g", vim.diagnostic.goto_next)

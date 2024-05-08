vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set notermguicolors")
vim.cmd("set number")

-- Switch to different buffer and close the previous buffer
vim.keymap.set("n", "<A-n>", ':b#|bd#<CR>', { silent = true })

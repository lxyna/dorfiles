-- Se options
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.mapleader = ' '

vim.o.rnu = true
vim.o.nu = true

vim.o.whichwrap = vim.o.whichwrap .. '>,l'
vim.o.whichwrap = vim.o.whichwrap .. '<,h'

vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8

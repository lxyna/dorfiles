local keymap_opts = { noremap = true }

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", keymap_opts)
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", keymap_opts)

vim.keymap.set('n', '<C-d>', '<C-d>zz', keymap_opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', keymap_opts)

-- Key mapping for formatting
vim.keymap.set('n', '<leader>d', '<cmd>lua vim.lsp.buf.format()<CR>', keymap_opts)

vim.keymap.set('n', '<C-Space>', '<cmd>lua vim.lsp.buf.code_action()<CR>', keymap_opts)

vim.keymap.set('n', '<C-L>',
    ':nohlsearch<CR>' .. (vim.opt.diff:get() and '<Bar>diffupdate' or '') .. '<CR><C-L>', keymap_opts)

vim.keymap.set('n', "<c-h>", "<c-w>h", keymap_opts)
vim.keymap.set('n', "<c-t>", "<c-w>k", keymap_opts)
vim.keymap.set('n', "<c-n>", "<c-w>j", keymap_opts)
vim.keymap.set('n', "<c-s>", "<c-w>l", keymap_opts)

-- Copy to clipboard
vim.keymap.set('v', '<leader>y', '"+y', keymap_opts)
vim.keymap.set('n', '<leader>Y', '"+Y', keymap_opts)
vim.keymap.set('n', '<leader>y', '"+y', keymap_opts)

-- paste from clipboard
vim.keymap.set('n', '<leader>p', '"+p', keymap_opts)
vim.keymap.set('n', '<leader>P', '"+P', keymap_opts)
vim.keymap.set('v', '<leader>p', '"+p', keymap_opts)
vim.keymap.set('v', '<leader>P', '"+P', keymap_opts)

-- exit terminal mode
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', keymap_opts)

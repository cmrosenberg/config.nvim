if vim.fn.filereadable("~/.config/nvim/plugins.vim") == 1 then
        require ("plugins")
end

vim.g.mapleader = ','
vim.g.maplocalleader = ';'

vim.keymap.set('i', 'jk', '<esc>')
vim.keymap.set('n', '<leader>b', ':b#<cr>')
vim.keymap.set('n', '<leader>c', ':close<cr>')
vim.keymap.set('n', '<leader><cr>', '<c-]>')
vim.keymap.set('n', '<leader>p', '"+p')
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('n', '<c-a>', '<Nop>')
vim.keymap.set('n', '<c-x>', '<Nop>')
vim.keymap.set('v', '<leader>p', '"+p')
vim.keymap.set('v', '<leader>y', '"+y')

vim.o.laststatus = 2
vim.o.sidescrolloff = 5

local undodir = vim.fn.stdpath('cache') .. '/undo'
vim.fn.mkdir(undodir, 'p')
vim.opt.undofile = true
vim.opt.undodir = undodir

vim.opt.display:append {"lastline"}
vim.opt.expandtab = true
vim.opt.listchars = {tab = '> ', trail = '-', extends = '>', precedes = '<', nbsp = '+'}
vim.opt.number = true
vim.opt.splitbelow = true
vim.opt.splitright = true

require ("lsp")

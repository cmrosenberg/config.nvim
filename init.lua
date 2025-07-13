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

vim.cmd [[colorscheme habamax]]

local function safe_require(module)
    local ok, result = pcall(require, module)
    return ok and result or nil
end

local has_lspconfig = safe_require('lspconfig')
if has_lspconfig then
        require('lsp')
end

local has_telescope = safe_require('telescope')
if has_telescope then
    vim.keymap.set('n', '<leader>s', ':Telescope live_grep<cr>')
    vim.keymap.set('n', '<leader>f', ':Telescope find_files<cr>')
end

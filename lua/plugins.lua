local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')
Plug('neovim/nvim-lspconfig')
Plug('tpope/vim-commentary')
Plug('tpope/vim-eunuch')
Plug('tpope/vim-fugitive')
Plug('nvim-lua/plenary.nvim')
Plug('nvim-treesitter/nvim-treesitter')
Plug('nvim-telescope/telescope-fzf-native.nvim')
Plug('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.8' })
vim.call('plug#end')

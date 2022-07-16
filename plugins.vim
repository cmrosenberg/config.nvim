call plug#begin()
Plug 'neovim/nvim-lspconfig'

Plug 'dracula/vim', {'as': 'dracula'}

Plug 'prettier/vim-prettier', {
        \ 'do': 'yarn install',
        \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

call plug#end()

au BufEnter *.tsx set ft=typescript | nnoremap <localleader>p :Prettier<cr>
au BufEnter *.js nnoremap <localleader>p :Prettier<cr>
au BufEnter *.ts nnoremap <localleader>p :Prettier<cr>
au BufEnter *.css nnoremap <localleader>p :Prettier<cr>
au BufEnter *.html nnoremap <localleader>p :Prettier<cr>
au BufEnter *.md nnoremap <localleader>p :Prettier<cr>

au BufEnter *.py nnoremap <localleader>p :%!black -q -<cr>
au BufEnter *.go nnoremap <localleader>p :%!gofmt<cr>

colo dracula

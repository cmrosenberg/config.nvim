call plug#begin()
Plug 'neovim/nvim-lspconfig'

Plug 'dracula/vim', {'as': 'dracula'}

Plug 'prettier/vim-prettier', {
        \ 'do': 'yarn install',
        \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'

Plug 'ahmedkhalf/project.nvim'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

Plug 'JoosepAlviste/nvim-ts-context-commentstring'

Plug 'udalov/kotlin-vim'

call plug#end()


let g:prettier#config#print_width = 80
let g:prettier#config#tab_width = 2
let g:prettier#config#use_tabs = 'false'
let g:prettier#config#semi = 'true'
let g:prettier#config#single_quote = 'true'
let g:prettier#config#bracket_spacing = 'false'
let g:prettier#config#jsx_bracket_same_line = 'false'
let g:prettier#config#arrow_parens = 'always'
let g:prettier#config#trailing_comma = 'all'
let g:prettier#config#parser = 'flow'
let g:prettier#config#config_precedence = 'prefer-file'
let g:prettier#config#prose_wrap = 'preserve'
let g:prettier#config#html_whitespace_sensitivity = 'css'
let g:prettier#autoformat = 0

au BufEnter *.tsx set ft=typescript | nnoremap <localleader>p :Prettier<cr>
au BufEnter *.js nnoremap <localleader>p :Prettier<cr>
au BufEnter *.ts nnoremap <localleader>p :Prettier<cr>
au BufEnter *.css nnoremap <localleader>p :Prettier<cr>
au BufEnter *.html nnoremap <localleader>p :Prettier<cr>
au BufEnter *.md nnoremap <localleader>p :Prettier<cr>

au BufEnter *.py nnoremap <localleader>p :%!black -q -<cr>

au BufEnter *.go nnoremap <localleader>p :%!gofmt<cr>
au BufEnter *.go set noexpandtab
au BufEnter *.go set tabstop=4 | set shiftwidth=4

colo dracula

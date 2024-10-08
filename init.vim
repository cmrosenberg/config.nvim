if filereadable(expand("~/.config/nvim/plugins.vim"))
        source ~/.config/nvim/plugins.vim
endif

" Remainders from sensible.vim
set display+=lastline
set laststatus=2
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set sidescrolloff=5

set list

set hidden
let mapleader = ","
let maplocalleader = ";"

nnoremap <leader>b :b#<cr>
inoremap jk <esc>

set expandtab

set splitbelow
set splitright

"set cursorline

" Extremely crude mappings for timestamps.
:nnoremap <localleader>t o<Esc>"=strftime("%Y, Week %V, %A %B %d at %X %Z: ")<C-M>pA
:nnoremap <localleader>T O<Esc>"=strftime("%Y, Week %V, %A %B %d at %X %Z: ")<C-M>pA

" Interact with system clipboard
:nnoremap <leader>p "+p
:vnoremap <leader>p "+p
:nnoremap <leader>y "+y
:vnoremap <leader>y "+y

:nnoremap <leader>o :call Protocolfile()<cr>
:nnoremap <localleader>o :call SplitProtocolfile()<cr>
:nnoremap <leader>O :call VSplitProtocolfile()<cr>

set statusline=%<%f\ \| "Show filename relative to working directory
set statusline+=\ %{''.(&fenc!=''?&fenc:&enc).''}\ \|      "Encoding
set statusline+=\ %{&ff}\                              "FileFormat (dos/unix..)
set statusline+=\%h%m%r%=%-14.(%l,%c%V%)\ %P "Rest of the standard options
"undo
silent !mkdir -p ~/.local/share/nvim/undo > /dev/null 2>&1
set undodir=~/.local/share/nvim/undo
set undofile

if executable("par")
    set formatprg=par
endif

nnoremap <leader>c :close<cr>
nnoremap <leader><cr> <c-]>

" Turn off increment/decrement features
nnoremap <c-a> <Nop>
nnoremap <c-x> <Nop>

nnoremap <leader>s :Telescope live_grep<cr>
nnoremap <leader>f :Telescope find_files<cr>
vnoremap <localleader>s "zy:Telescope grep_string default_text=<C-r>z<cr>

set number


lua require ("lsp")

if filereadable(expand("~/.config/nvim/local.vim"))
        source ~/.config/nvim/local.vim
endif

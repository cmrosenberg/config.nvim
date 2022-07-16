" Remainders from sensible.vim
set display+=lastline
set laststatus=2
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set sidescrolloff=5


set list

let mapleader = ","
let maplocalleader = ";"

nnoremap <leader>b :b#<cr>
inoremap jk <esc>

set expandtab

" Extremely crude mappings for timestamps.
:nnoremap <leader>t o<Esc>"=strftime("%Y, Week %V, %A %B %d at %X %Z: ")<C-M>pA
:nnoremap <leader>T O<Esc>"=strftime("%Y, Week %V, %A %B %d at %X %Z: ")<C-M>pA

" Interact with system clipboard
:nnoremap <leader>p "+p
:vnoremap <leader>p "+p
:nnoremap <leader>y "+y
:vnoremap <leader>y "+y

:function Protocolfile()
       :execute ("edit " . $HOME . "/protocol/"  . strftime("%Y-%m-%d") . ".md")
:endfunction

:function VSplitProtocolfile()
       :execute ("vsplit " . $HOME . "/protocol/"  . strftime("%Y-%m-%d") . ".md")
:endfunction

:function SplitProtocolfile()
       :execute ("split " . $HOME . "/protocol/"  . strftime("%Y-%m-%d") . ".md")
:endfunction

:nnoremap <leader>o :call Protocolfile()<cr>
:nnoremap <localleader>o :call SplitProtocolfile()<cr>
:nnoremap <leader>O :call VSplitProtocolfile()<cr>

set statusline=%<%f\ \| "Show filename relative to working directory
set statusline+=\ %{''.(&fenc!=''?&fenc:&enc).''}\ \|      "Encoding
set statusline+=\ %{&ff}\                              "FileFormat (dos/unix..)
set statusline+=\%h%m%r%=%-14.(%l,%c%V%)\ %P "Rest of the standard options

if executable("par")
    set formatprg=par
endif

nnoremap <leader>c :close<cr>
nnoremap <leader><cr> <c-]>

" Turn off increment/decrement features
nnoremap <c-a> <Nop>
nnoremap <c-x> <Nop>

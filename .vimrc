call pathogen#infect()
call pathogen#helptags()

syntax enable
set background=light
let g:solarized_termcolors=256
colorscheme solarized

:set tabstop=4
:set pastetoggle=<F8>

" This shows what you are typing as a command.  I love this!
set showcmd

" Autoindent
set autoindent

" Spaces better than tab
set expandtab
set smarttab

" 8 character tab == no!
set shiftwidth=3
set softtabstop=3

" Line numbers!
set number

" This is totally awesome - remap jj to escape in insert mode.  You'll never type jj anyway, so it's great!
inoremap jj <Esc>
nnoremap JJJJ <Nop>

" highlight things we find with search
set hlsearch

call pathogen#infect()
call pathogen#helptags()

" --------- SOLARIZED CONFIG --------
syntax enable
set background=light
let g:solarized_termcolors=256
colorscheme solarized

" --------- VARIOUS CONFIGS ---------
" ---------  jason 2/6/15  ----------
set autoindent                   " Autoindent
set backspace=indent,eol,start   " Allow backspacing over autoindent, line breaks, and start of insert action
set directory-=.                 " Don't store swap files in current dir
set encoding=utf-8               " UTF-8 Encoding

set hlsearch                     " highlight things we find with search
set ignorecase                   " Case insensitive search
set incsearch                    " Search as you type
set laststatus=2                 " Always display status line

set list                         " Show trailing whitespace
set listchars=tab:▸\ ,trail:▫    " Show trailing whitespace pt. 2
set mouse=a                      " Enable mouse behavior
set nostartofline                " Stop certain movements from always going to the first character of a line.

set number                       " Line Numbers
set pastetoggle=<F8>             " Set paste toggle to F8
set ruler                        " Display cursor position on the last line of screen or in status
set scrolloff=5                  " Scrolls above / below cursor line

set showcmd                      " This shows what you are typing as a command.
set smartcase                    " case-sensitive search if caps
set t_vb=                        " Neither flash nor beep with visualbell
set visualbell                   " Use visual bell instead of beeping when doing wrongs


" ---------- TABBING -----------
set expandtab                    " Expands tabs to spaces
set shiftwidth=2                 " normal mode indentation uses 2 spaces
set smarttab                     "
set softtabstop=3                " Insert mode tab uses 2 spaces
set tabstop=4                    " Tabs occupy 4 chars


" ---------- remappings ---------
inoremap jj <Esc>     " remap two j's to escape in insert mode.
nnoremap JJJJ <Nop>   " remap two j's to escape in insert mode.

autocmd VimResized * :wincmd=    " rebalance windows on vim resize
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Strip trailing whitespace on save
fun! <SID>StripTrailingWhiteSpaces()
   let l = line(".")
   let c = col(".")
   %s/\s\+$//e
   call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhiteSpaces()

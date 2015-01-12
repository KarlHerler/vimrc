
execute pathogen#infect()
set noswapfile
syntax on
syntax enable

" --------------------------------
" Styling and plugins
" --------------------------------

if !has("gui_running")
  let g:solarized_termtrans = 1
  let g:solarized_termcolors=256 " this breaks styling when using iterm2 and ssh
endif
set background=dark
colorscheme solarized " for some reason solarized didnt like regular vim
if has('gui_running')
  set guioptions-=T  " no toolbar
  set guioptions-=L  " no scrollbar on NERDTree

  vmap <C-c> "+yi
  vmap <C-x> "+c
  vmap <C-v> c<ESC>"+p
  imap <C-v> <C-r><C-o>+
endif
set guifont=Inconsolata\ for\ Powerline\ Medium\ 11
"set guifont=Inconsolata\ 11

" NERDTree
map <C-n> :NERDTreeToggle<CR>
" If we dont specify a file open with nerdree active
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Close vim if nerdtree is the only thing left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Airline
let g:airline_powerline_fonts=1
if !exists('g:airline_symbols')
  let g:airline_symbols={}
endif
let g:airline_symbols.space="\ua0"
let g:bufferline_echo=0
set noshowmode " disables double insert with airline

" ---------------------------------
" Added because the internet told me to:
" http://stevelosh.com/blog/2010/09/coming-home-to-vim/#making-vim-more-useful
" --------------------------------

set nocompatible
set modelines=0

" behavior from same source

set encoding=utf-8
set scrolloff=3
" set showmode
" set showcmd
set hidden
set cursorline
set ttyfast
set ruler
" set backspace=indent,eol,start
set relativenumber
set undofile
set colorcolumn=85


" ---------------------------------------------------------------------------
"  Searching
" ---------------------------------------------------------------------------
set incsearch
set ignorecase
set smartcase
set hlsearch
nmap \q :nohlsearch<CR>


" ----------------------------------------------------------------------------
"  Text Formatting
" ----------------------------------------------------------------------------

set autoindent             " automatic indent new lines
set smartindent            " be smart about it
inoremap # X<BS>#
set nowrap                 " do not wrap lines
set softtabstop=2          " yep, two
set shiftwidth=2           " ..
set tabstop=4
set expandtab              " expand tabs to spaces
set nosmarttab             " fuck tabs
set formatoptions+=n       " support for numbered/bullet lists
"set textwidth=80           " wrap at 80 chars by default
set virtualedit=block      " allow virtual edit in visual block ..

" ----------------------------------------------------------------------------
"  Remapping
" ----------------------------------------------------------------------------

" lead with ,
let mapleader = ","

" exit to normal mode with 'jj'
inoremap jj <ESC>


" reflow paragraph with Q in normal and visual mode
nnoremap Q gqap
vnoremap Q gq

" sane movement with wrap turned on
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

" ----------------------------------------------------------------------------
"  UI
" ----------------------------------------------------------------------------

" set ruler                  " show the cursor position all the time
set noshowcmd              " don't display incomplete commands
set nolazyredraw           " turn off lazy redraw
set number                 " line numbers
set wildmenu               " turn on wild menu
set wildmode=list:longest,full
"set ch=2                   " command line height
set backspace=2            " allow backspacing over everything in insert mode
set whichwrap+=<,>,h,l,[,] " backspace and cursor keys wrap to
set shortmess=filtIoOA     " shorten messages
set report=0               " tell us about changes
set nostartofline          " don't jump to the start of line when scrolling


" ----------------------------------------------------------------------------
" Visual Cues
" ----------------------------------------------------------------------------

set showmatch              " brackets/braces that is
set mat=5                  " duration to show matching brace (1/10 sec)
set incsearch              " do incremental searching
set laststatus=2           " always show the status line
set ignorecase             " ignore case when searching
set nohlsearch             " don't highlight searches
set visualbell             " shut the fuck up


set noshowmode " disables double insert with airline

" ---------------------------------------------------------------------------
"  Strip all trailing whitespace in file
" ---------------------------------------------------------------------------

function! StripWhitespace ()
    exec ':%s/ \+$//gc'
endfunction
map ,s :call StripWhitespace ()<CR>

autocmd BufWritePre * :%s/\s\+$//e

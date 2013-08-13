set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My Bundles here:
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-eunuch'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-surround'
Bundle "cakebaker/scss-syntax.vim"
Bundle "kchmck/vim-coffee-script"
Bundle "mileszs/ack.vim"
Bundle "altercation/vim-colors-solarized"
Bundle "airblade/vim-gitgutter"
Bundle "nono/vim-handlebars"
Bundle "bling/vim-bufferline"
Bundle "bling/vim-airline"
Bundle "godlygeek/tabular"

:command WQ wq
:command Wq wq
:command W w
:command Q q

if exists("+colorcolumn")
  set colorcolumn=80
endif

imap jj <Esc>

let mapleader = ","

map <Leader>c :s/^/#/<cr>
map <Leader>C :s/^#//<cr>

" hard-wrap the current line
map <Leader>w gww

map <Leader>n :set invnumber<CR>

set laststatus=2
au VimResized * :wincmd = 

" highlight trailing whitespace
match ErrorMsg '\s\+$'

filetype plugin indent on
set ts=2
set sw=2
set et
set ai
syntax on
" set nu
set background=dark
colorscheme solarized
highlight Normal guibg=#fef2db
set encoding=utf8
set fileencoding=utf8
set backspace=indent,eol,start
let g:rubycomplete_rails = 1
set hidden
nnoremap ' `
nnoremap ` '
set history=1000
set wildmode=list:longest
set ignorecase
set smartcase
set title
set ruler
set hlsearch
set incsearch
set backupcopy=yes
noremap <Down> <Nop>
noremap <Up> <Nop>
noremap <Right> <Nop>
noremap <Left> <Nop>

cnoremap <C-A> <Home>
cnoremap <C-F> <Right>
cnoremap <C-B> <Left>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>

" scrollwheel support
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

highlight LineNr ctermfg=grey
let g:bufferline_echo=0
let g:airline_powerline_fonts=1
let g:airline_theme='badwolf'

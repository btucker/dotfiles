set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My Bundles here:
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-eunuch'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-unimpaired'
Bundle "cakebaker/scss-syntax.vim"
Bundle "kchmck/vim-coffee-script"
Bundle "mileszs/ack.vim"
Bundle "rking/ag.vim"
Bundle "altercation/vim-colors-solarized"
Bundle "airblade/vim-gitgutter"
Bundle "nono/vim-handlebars"
Bundle "bling/vim-airline"
Bundle "vim-airline/vim-airline-themes"
Bundle "godlygeek/tabular"
" Bundle "scrooloose/syntastic"
Plugin 'w0rp/ale'
Bundle "justinmk/vim-sneak"
Bundle "ervandew/supertab"
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'
Bundle 'tomtom/tcomment_vim'
Bundle 'vim-scripts/LargeFile'
Bundle 'elzr/vim-json'
Bundle 'derekwyatt/vim-scala'
Bundle 'laurentgoudet/vim-howdoi'
Bundle 'pangloss/vim-javascript'
Bundle 'mxw/vim-jsx'
" Bundle 'junegunn/fzf.vim'

:command WQ wq
:command Wq wq
:command W w
:command Q q

if exists("+colorcolumn")
  set colorcolumn=80
endif

" tell syntastic to use eslint
let g:syntastic_javascript_checkers = ['eslint']

imap jj <Esc>

let mapleader = ","

map <Leader>c :TComment<cr>
map <Leader>v :e $MYVIMRC<cr>

" hard-wrap the current line
map <Leader>w gww

map <Leader>n :set invnumber<CR>
map <Leader>r :set rnu<CR>

" ctags
map <Leader>t <C-]>
map <Leader>b <C-t>

" find the word under the cursor with ack
map <Leader>f :Ag <C-R><C-W><CR>

" Dash
nmap <silent> <leader>d <Plug>DashSearch

" quote the current word
map <Leader>q ysiw"

set laststatus=2
au VimResized * :wincmd = 

" highlight trailing whitespace that's not at the beginning of a line
match ErrorMsg '\(\S\+\)\@<=\s\+$'

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
" set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

highlight LineNr ctermfg=grey
let g:airline_powerline_fonts=1
let g:airline_theme='badwolf'
let g:airline#extensions#tabline#enabled = 1

let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_rails = 1

" Tab completion options
set wildmode=list:longest,list:full
set complete=.,w,t
" Indent if we're at the beginning of a line. Else, do completion.
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

" rails.vim config
let g:rails_projections = {
  \ "app/uploaders/*_uploader.rb": {
  \   "command": "uploader",
  \   "template":
  \     "class %SUploader < CarrierWave::Uploader::Base\nend",
  \   "test": [
  \     "test/unit/%s_uploader_test.rb",
  \     "spec/models/%s_uploader_spec.rb"
  \   ],
  \   "keywords": "process version"
  \ },
  \ "config/routes.rb": {"command": ["outes", "routes"]}}

source ~/.vim/private
source ~/.vim/zipPlugin.vim

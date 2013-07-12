fun SetupVAM()
  " YES, you can customize this vam_install_path path and everything still works!
  let vam_install_path = expand('$HOME') . '/.vim/vim-addons'
  exec 'set runtimepath+='.vam_install_path.'/vim-addon-manager'

  " * unix based os users may want to use this code checking out VAM
  " * windows users want to use http://mawercer.de/~marc/vam/index.php
  "   to fetch VAM, VAM-known-repositories and the listed plugins
  "   without having to install curl, unzip, git tool chain first
  " -> BUG [4] (git-less installation)
  if !filereadable(vam_install_path.'/vim-addon-manager/.git/config') && 1 == confirm("git clone VAM into ".vam_install_path."?","&Y\n&N")
    " I'm sorry having to add this reminder. Eventually it'll pay off.
    call confirm("Remind yourself that most plugins ship with documentation (README*, doc/*.txt). Its your first source of knowledge. If you can't find the info you're looking for in reasonable time ask maintainers to improve documentation")
    exec '!p='.shellescape(vam_install_path).'; mkdir -p "$p" && cd "$p" && git clone --depth 1 git://github.com/MarcWeber/vim-addon-manager.git'
    " VAM run helptags automatically if you install or update plugins
    exec 'helptags '.fnameescape(vam_install_path.'/vim-addon-manager/doc')
  endif

  " Example drop git sources unless git is in PATH. Same plugins can
  " be installed form www.vim.org. Lookup MergeSources to get more control
  " let g:vim_addon_manager['drop_git_sources'] = !executable('git')

  call vam#ActivateAddons(['github:tpope/vim-rails','github:tpope/vim-eunuch','github:tpope/vim-markdown','github:tpope/vim-fugitive','github:tpope/vim-surround',"snipmate-snippets", "github:cakebaker/scss-syntax.vim", "github:kchmck/vim-coffee-script", "github:mileszs/ack.vim", "github:altercation/vim-colors-solarized", "github:airblade/vim-gitgutter", "github:nono/vim-handlebars", "github:bling/vim-bufferline", "github:bling/vim-airline" ], {'auto_install' : 1})
  " sample: call vam#ActivateAddons(['pluginA','pluginB', ...], {'auto_install' : 0})
  " where 'pluginA' could be "git://" "github:YourName" or "snipmate-snippets" see vam#install#RewriteName()
  " also see section "5. Installing plugins" in VAM's documentation
  " which will tell you how to find the plugin names of a plugin

endf
call SetupVAM()

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
set nu
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
highlight LineNr ctermfg=black
let g:bufferline_echo=0
let g:airline_powerline_fonts=1
let g:airline_theme='badwolf'

syntax on

set hlsearch
set ignorecase
set tabstop=4
set shiftwidth=4
set number
set ruler
set softtabstop=0
set expandtab
set title
set incsearch
"set nowrapscan

set showmatch
set autoindent
set smartindent
set smarttab

set cursorline
"set cursorcolumn

set nocompatible

if has('vim_starting')
set runtimepath+=~/.vim/neobundle.vim.git/
    call neobundle#rc(expand('~/.vim/bundle/'))
endif

set rtp+=/usr/local/bin/go/misc/vim
exe "set rtp+=".globpath("/usr/local/bin/go", "src/github.com/nsf/gocode/vim")

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'molokai'

filetype plugin indent on
NeoBundleCheck

colorscheme molokai

set directory=$HOME/.vimbackup

set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
let &t_Co=256

au BufRead,BufNewFile,BufReadPre *.go       set filetype=go tabstop=4 shiftwidth=4 softtabstop=4
au BufRead,BufNewFile,BufReadPre *.scala    set filetype=scala tabstop=4 shiftwidth=4 softtabstop=4
au BufRead,BufNewFile,BufReadPre *.ts       set filetype=typescript tabstop=4 shiftwidth=4 softtabstop=4
au BufRead,BufNewFile,BufReadPre *.coffee   set filetype=coffee
au BufRead,BufNewFile,BufReadPre *.hbs      set filetype=handlebars tabstop=2 shiftwidth=2 softtabstop=2
au BufRead,BufNewFile,BufReadPre *.html     set filetype=html tabstop=2 shiftwidth=2 softtabstop=2
au BufRead,BufNewFile,BufReadPre *.scss     set filetype=scss tabstop=2 shiftwidth=2 softtabstop=2

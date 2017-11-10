" Startify variables "
" Close NERDTree before saving the session
let g:startify_session_before_save = [
        \ 'echo "Cleaning up before saving.."',
        \ 'silent! NERDTreeTabsClose'
        \ ]
" Save on :SLoad
let g:startify_session_persistence = 1
" Cowsays with unicode!
let g:startify_fortune_use_unicode = 1

" YouCompleteMe variables
let g:ycm_extra_conf_globlist = ['build/']

" YouCompleteMe Python
let g:ycm_python_binary_path = 'python3'

call plug#begin('~/.vim/plugged')
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --rust-completer' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'altercation/vim-colors-solarized'
Plug 'gcmt/taboo.vim'
Plug 'jceb/vim-orgmode'
Plug 'mhinz/vim-startify'
Plug 'scrooloose/nerdtree'
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-speeddating'
Plug 'vhdirk/vim-cmake'
call plug#end()

filetype plugin on
set cc=80
set expandtab
set encoding=utf-8
set number
set sessionoptions+=tabpages,globals
set shell=/bin/zsh
set shiftwidth=4
set smartindent
set tabstop=4
set term=xterm-256color
set wildmode=longest,list
set wildmenu
syntax on

autocmd FileType javascript,json,html set tabstop=2 shiftwidth=2

colorscheme janah

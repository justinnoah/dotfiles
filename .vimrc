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
let g:ycm_cache_omnifunc = 1
" YouCompleteMe Python
let g:ycm_python_binary_path = 'python3'

" NERDTree + Startify
let NERDTreeHijackNetrw = 0
let g:nerdtree_tabs_open_on_console_startup = 1
let g:nerdtree_tabs_open_on_new_tab = 1
let g:nerdtree_tabs_focus_on_files = 1

call plug#begin('~/.vim/plugged')
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimproc.vim', {'do': 'make'}
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --rust-completer' }
Plug 'gcmt/taboo.vim'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'm2mdas/phpcomplete-extended'
Plug 'mhinz/vim-startify'
Plug 'scrooloose/nerdtree'
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-speeddating'
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
autocmd FileType php setlocal omnifunc=phpcomplete_extended#CompletePHP

autocmd VimEnter *
  \ if !argc()
  \   | Startify
  \ | endif

autocmd VimEnter * NERDTreeTabsOpen
autocmd VimEnter * wincmd w

colorscheme murphy

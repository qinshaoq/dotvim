set nocompatible
filetype off "required

if has("unix")
	set rtp+=~/.vim/bundle/vundle/
	call vundle#rc()
else
	set rtp+=~/vimfiles/bundle/vundle/
	let path='~/vimfiles/bundle'
	call vundle#rc(path)
endif

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My Bundles here
"
" original repos on github
Bundle 'Lokaltog/vim-easymotion'
Bundle 'altercation/vim-colors-solarized'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'Raimondi/delimitMate'

filetype plugin indent on "required
"
" Brief help
" :BundleList		- list configured bundles
" :BundleInstall(!)	- install(update) bundles
" :BundleSearch(!) foo	- search(or refresh cache first) for foo
" :BundleClean(!)	- confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" easymotion
let g:EasyMotion_leader_key = '<Leader>'

" NERDTree
map <S-M> :NERDTreeToggle<CR>

" CtrlP
nmap ,, :CtrlP<CR>

" Neocomplcache
let g:neocomplcache_enable_at_startup=1

" ordinary config
set number
"set mouse=a
set tabstop=4
set expandtab
set shiftwidth=4
set cindent
set autoindent
set hlsearch
set encoding=utf-8
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5
if has("unix")
    set termencoding=utf-8
else
    set termencoding=cp936
endif
syntax enable
set background=dark
if has('gui_running')
    colorscheme solarized
else
    colorscheme darkblue
endif
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l
nmap <C-k> <C-w>k
nmap <C-j> <C-w>j
let mapleader = ","
if has("unix")
    nmap <Leader>ee :e ~/.vim/vimrc<CR>
else
    nmap <Leader>ee :e ~/vimfiles/vimrc<CR>
endif
autocmd! bufwritepost vimrc source % 

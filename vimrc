set autowrite
set backspace=2
set encoding=utf-8
set hlsearch
set ignorecase
set incsearch
set mouse=a
set nocompatible
set smartcase
set smartindent
set title
set tabstop=2
set expandtab
set list

syntax on

" Scroll only one line for mouse wheel events to get smooth scrolling on touch screens
map <ScrollWheelUp> <C-Y>
imap <ScrollWheelUp> <C-X><C-Y>
map <ScrollWheelDown> <C-E>
imap <ScrollWheelDown> <C-X><C-E>

" NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=/data/data/com.termux/files/home/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/data/data/com.termux/files/home/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'Townk/vim-autoclose'
NeoBundleLazy 'tpope/vim-endwise', {
\ 'autoload' : {'insert' : 1,}}

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

if &compatible
    set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/YoheitaOnishi/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/Users/YoheitaOnishi/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'scrooloose/nerdtree'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

execute pathogen#infect()
syntax on
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set cursorline
set smartindent
set number

inoremap <C-e> <Esc>$a
inoremap <C-a> <Esc>^a
noremap <C-e> <Esc>$a
noremap <C-a> <Esc>^a
nnoremap <silent><C-e> :NERDTreeToggle<CR>


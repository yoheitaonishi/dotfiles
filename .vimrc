" I'm using pathogen.vim
" Check ~/.vim/bundle/*
" If you want to add plugin, just pull git repo to ~/.vim/bundle/*.
" It is pathogen.vim!! Very simple!!
" Now installed dmdque-vim-solidity, nerdtree, tomlion-vim-solidity

execute pathogen#infect()

syntax on
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set cursorline
set number

let NERDTreeDirArrowExpandable = "+"
let NERDTreeDirArrowCollapsible = "~"

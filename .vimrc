syntax on
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set cursorline
set number

let g:PyFlakeOnWrite = 1
let g:PyFlakeCheckers = 'pep8,mccabe,pyflakes'
let g:PyFlakeDefaultComplexity=10
let g:syntastic_python_checkers = ['pyflakes', 'pep8']
" let $PYTHON_DLL = "/Users/yoheitaonishi/.pyenv/versions/anaconda3-5.0.0/lib/python3.6/site-packages"
if has('gui_macvim')
    let $PYTHON3_DLL="/Users/yoheitaonishi/.pyenv/versions/anaconda3-5.0.0/lib/python3.6/site-packages"
endif

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=/Users/yoheitaonishi/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('/Users/yoheitaonishi/.cache/dein'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/unite.vim')
call dein#add('hynek/vim-python-pep8-indent')
call dein#add('Townk/vim-autoclose')
call dein#add('Shougo/neocomplete.vim') " vimの補完機能
call dein#add('Shougo/neosnippet.vim') " vimのsnippet機能。:NeoSnippetEditで編集可能。
call dein#add('Shougo/neosnippet-snippets') " 基本的なsnippetのセット
call dein#add('scrooloose/nerdtree') " ディレクトリをツリー表示できる
call dein#add('vim-syntastic/syntastic') " 構文チェック。linterは適宜追加。
call dein#add('tpope/vim-fugitive.git') " vim内でgitを扱えるようにする
call dein#add('tpope/vim-surround') " 「テキストを囲うもの」の編集を行う
call dein#add('vim-scripts/YankRing.vim') " テキストコピーの履歴を順々に参照できる。<C-p>, <C-n>で循環。
call dein#add('davidhalter/jedi-vim') " pythonの高機能な補完機能。

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------


" *******************************************************
" jedi
" *******************************************************
" let g:jedi#popup_on_dot = 0
" let g:jedi#popup_select_first = 0
" let g:jedi#completions_command = "<S-Tab>"
let g:jedi#completions_enabled = 1
let g:jedi#completions_command = "<C-N>"
" autocmd FileType python setlocal completeopt-=preview

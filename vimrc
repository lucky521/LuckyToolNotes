" 我的vim配置
" ~/.vim/vimrc

set nocompatible
colorscheme molokai
set backspace=indent,eol,start
set nu
syntax on
set autoindent
set cursorline
"set cursorcolumn
set hlsearch
set gcr=a:block-blinkon0

set t_Co=256 "在securecrt下要有

let &termencoding=&encoding
set fileencodings=utf-8,ucs-bom,gbk,gb2312,cp936
set termencoding=utf-8
"set fileformats=unix
set encoding=prc

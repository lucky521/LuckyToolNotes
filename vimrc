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
set incsearch
set gcr=a:block-blinkon0

set t_Co=256 "在securecrt下要有

let &termencoding=&encoding
set fileencodings=utf-8,ucs-bom,gbk,gb2312,cp936
set termencoding=utf-8
"set fileformats=unix
set encoding=prc

"自动加作者信息 
"第一部分
"将键盘上的F4功能键映射为添加作者信息的快捷键
map <F4> ms:call TitleDet()<cr>'s
function AddTitle()
	call append(0,"##############################################")
	call append(1,"#")
	call append(2,"# Author: lucky521 - lucky521@XXXXXXXXX.com")
	call append(3,"#")
	call append(4,"# QQ :888888888 ")
	call append(5,"#")
	call append(6,"# Last modified: ".strftime("%Y-%m-%d %H:%M"))
	call append(7,"#")
	call append(8,"# Filename: ".expand("%:t"))
	call append(9,"#")
	call append(10,"############################################### ")
	echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
	endfunction
	"此处为预显示的格式
	"第二部分
	"更新最近修改时间和文件名
function UpdateTitle()
	normal m'
	execute '/# *Last modified:/s@:.*$@\=strftime(":\t%Y-%m-%d %H:%M")@'
	normal ''
	normal mk
	execute '/# *Filename:/s@:.*$@\=":\t\t".expand("%:t")@'
	execute "noh"
	normal 'k
	echohl WarningMsg | echo "Successful in updating the copy right." | echohl None
	endfunction
	"第三部分
	"判断前10行代码里面，是否有Last modified这个单词（为更新时间的依据），
	"如果没有的话，代表没有添加过作者信息，需要新添加；
	"如果有的话，那么只需要更新即可
function TitleDet()
	let n=1
	while n < 10
let line = getline(n)
	if line =~ '^\#\s*\S*Last\smodified:\S*.*$'
call UpdateTitle()
	return
	endif
	let n = n + 1
	endwhile
call AddTitle()
	endfunction

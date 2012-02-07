" fastcom.vim:	Vim global plugin for fast messageless git commits.
" Maintaner:	Ben Phillips <ben@ben-phillips.net>
" Version:	0.1

if (exists("g:fastcommit"))
	finish
endif
let g:fastcommit=1

fun! s:FastCommit()
	:!git add .
	:!git commit -m "."
endfun

command! -nargs=0 FastCommit call s:FastCommit()

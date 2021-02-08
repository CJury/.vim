let s:save_cpo = &cpo
set cpo&vim

if filereadable("./Session.vim")
	silent source ./Session.vim
endif

let &cpo = s:save_cpo
unlet s:save_cpo

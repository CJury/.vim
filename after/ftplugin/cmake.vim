let s:save_cpo = &cpoptions
set cpoptions&vim

setlocal shiftwidth=4 tabstop=4

let &cpoptions = s:save_cpo
unlet s:save_cpo

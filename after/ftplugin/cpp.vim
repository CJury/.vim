setlocal shiftwidth=4 tabstop=4

function! ClangFormat()
	let l:winview = winsaveview()
	%! clang-format 
	call winrestview(l:winview)
endfunction
nnoremap <Leader>cf :call ClangFormat()<CR>
"Relies on git@github.com:vim-scripts/DoxygenToolkit.vim.git
nnoremap <Leader>dx :Dox<CR>
nnoremap <Leader>dxa :DoxAuthor<CR>
nnoremap <Leader>dxl :DoxLic<CR>
nnoremap <Leader>dxb :DoxBlock<CR>

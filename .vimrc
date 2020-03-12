let mapleader=" "
let g:python_highlight_all = 1

filetype plugin indent on
syntax on 
set encoding=utf-8
set clipboard=unnamed
set number
colorscheme monokai
" NOP remappings "
inoremap <ESC> <NOP>
" Needed so vim can still understand escape sequences
inoremap <ESC>^[ <ESC>^[
noremap <Up> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
noremap <Down> <NOP>

inoremap jk <ESC>
nnoremap <silent> <Leader>o :<C-u>call append(line("."), repeat([""], v:count1))<CR>
nnoremap <silent> <leader>O :<C-u>call append(line(".")-1, repeat([""], v:count1))<CR> 
nnoremap <c-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
nnoremap <C-u> :viwu<CR>
nnoremap <C-U> :viwU<CR>
nnoremap <Leader>ev :vsplit $MYVIMRC<CR>
nnoremap <Leader>sv :source $MYVIMRC<CR>
nnoremap <Leader>" viw<ESC>a"<ESC>bi"<ESC>lel
nnoremap <Leader>" viw<ESC>a"<ESC>bi"<ESC>lel
nnoremap <Leader>i i_<ESC>r
" Terminal mode remappings
tnoremap <Leader>p <C-w>""

autocmd BufNewFile, BufRead *.py :Python3Syntax

"Syntastic options
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

nnoremap <Leader>epl :vsplit ~/.pylintrc<CR>

autocmd BufNewFile, BufRead *.py :let g:syntastic_python_checkers = ['pylint']

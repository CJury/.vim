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

" Hex mode remappings
nnoremap <Leader>H :Hexmode<CR>
vnoremap <Leader>H :Hexmode<CR>

autocmd BufNewFile, BufRead *.py :Python3Syntax

nnoremap <Leader>epl :vsplit ~/.pylintrc<CR>


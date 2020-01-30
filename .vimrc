let mapleader=" "
filetype plugin indent on
syntax on 
set encoding=utf-8
set clipboard=unnamed
inoremap jk <ESC>
inoremap <ESC> <NOP>
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
nnoremap <Leader><F5> :<C-u>Shell python %<CR>

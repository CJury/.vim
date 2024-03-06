let mapleader=" "
let g:python_highlight_all = 1

filetype plugin indent on
syntax on 
set encoding=utf-8
set clipboard=unnamed
set number
colorscheme monokai

""""""""""""""""""""""""""""""""""""""""""""""""""""
" Unmappings
""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap <ESC> <NOP>
" Needed so vim can still understand escape sequences
inoremap <ESC>^[ <ESC>^[

noremap <Up> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
noremap <Down> <NOP>

""""""""""""""""""""""""""""""""""""""""""""""""""""
" Generic custom remappings
""""""""""""""""""""""""""""""""""""""""""""""""""""
" Quick exit insert mode
inoremap jk <ESC>
" New line below without moving cursor
nnoremap <silent> <Leader>o :<C-u>call append(line("."), repeat([""], v:count1))<CR>
" New line above without moving cursor
nnoremap <silent> <leader>O :<C-u>call append(line(".")-1, repeat([""], v:count1))<CR>
" Move line up/down
nnoremap <c-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
" Toggle word Case
nnoremap <C-u> viw~<CR>
" word upper case
nnoremap <C-U> viwU<CR>
" Edit .vimrc
nnoremap <Leader>ev :vsplit $MYVIMRC<CR>
" Source .vimrc
nnoremap <Leader>sv :source $MYVIMRC<CR>
" Add double quotes around current word
nnoremap <Leader>" viw<ESC>a"<ESC>bi"<ESC>lel
" Add single quotes around current word
nnoremap <Leader>' viw<ESC>a'<ESC>bi'<ESC>lel
" Insert character before
nnoremap <Leader>i i_<ESC>r
nnoremap <Leader>epl :vsplit ~/.pylintrc<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin remappings
""""""""""""""""""""""""""""""""""""""""""""""""""""

" Hex mode
nnoremap <Leader>H :Hexmode<CR>
vnoremap <Leader>H :Hexmode<CR>

" vim-python-docstring
nnoremap <Leader>pd :DocstringTypes<CR>

" YouCompleteMe
nnoremap <Leader>gt :YcmCompleter GoTo<CR>

" unreal-engine
nnoremap <Leader>ub :call UnrealBuild({})<CR>

" nerdtree
nnoremap <Leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""
" Display settings
""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
" Display tabs as !··· by default
set list listchars=tab:!·,eol:$
" Show tabs as blue
highlight SpecialKey ctermfg=26 guibg=#2596BE
match ExtraWhitespace /\s\+$/

" Highlight the 80th column
set colorcolumn=80

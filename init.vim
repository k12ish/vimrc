syntax enable

" <c-u> UPPERCASES current word
nnoremap <c-u> viwU

" Hybrid line numbering
set relativenumber
set number

set expandtab  " Convert tabs to spaces
set autoindent " New lines inherit indentation

" Execute python scripts with <F5>
autocmd Filetype python nnoremap <buffer> <F5> :w<CR>:ter python3 "%"<CR>

call plug#begin()

" Autocomplete brackets
Plug 'tmsvg/pear-tree'
let g:pear_tree_smart_openers = 1
let g:pear_tree_smart_closers = 1
let g:pear_tree_smart_backspace = 1


call plug#end()

" Linux specific
:autocmd BufWinEnter * silent! !setxkbmap -option caps:swapescape

" Foster good habits: Remove functionality of arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

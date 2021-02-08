syntax enable

" Hybrid line numbering
set relativenumber
set number

" Convert tabs to spaces
set expandtab
" New lines inherit indentation
set autoindent

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

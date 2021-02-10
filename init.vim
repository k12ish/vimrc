syntax enable
set background=dark
colorscheme solarized

set showcmd    " shows <leader> key timeout

set expandtab  " Convert tabs to spaces
set autoindent " New lines inherit indentation

" Number of lines and chars to keep around cursor
set scrolloff=4
set sidescrolloff=5

" Hybrid line numbering
set relativenumber
set number

" Execute python scripts with <F5>
autocmd Filetype python nnoremap <buffer> <F5> :w<CR>:ter python3 "%"<CR>

" UPPERCASES current word
nnoremap <Leader>u viwU

" Change my Vimrc file
nnoremap <leader>ev :split $MYVIMRC<cr>


" Foster good habits: Remove functionality of arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Plugins installed with `vim-plug`
call plug#begin()

" Auto-complete brackets
Plug 'tmsvg/pear-tree'
let g:pear_tree_smart_openers = 1
let g:pear_tree_smart_closers = 1
let g:pear_tree_smart_backspace = 1


call plug#end()

" Linux specific
:autocmd VimEnter * silent! !setxkbmap -option caps:swapescape


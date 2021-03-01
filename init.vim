set nocompatible

syntax enable
set background=dark
let base16colorspace=256
set termguicolors

set showcmd    " shows <leader> key timeout

set expandtab  " Convert tabs to spaces
set autoindent " New lines inherit indentation

" Number of lines and chars to keep around cursor
set scrolloff=4
set sidescrolloff=5

" Hybrid line numbering
set relativenumber
set number

" When a file has been detected to have been changed outside of Vim and
" it has not been changed inside of Vim, automatically read it again.
set autoread

" Execute python scripts with <F5>
autocmd Filetype python nnoremap <buffer> <F5> :w<CR>:ter python3 "%"<CR>

" Edit my Vimrc file
nnoremap <leader>ev :split $MYVIMRC<cr>

" Quick-save
nnoremap <leader>w :w<cr>

" Exit/Navigate from terminal mode
:tnoremap <Esc> <C-\><C-n>
:tnoremap <C-h> <C-\><C-N><C-w>h
:tnoremap <C-j> <C-\><C-N><C-w>j
:tnoremap <C-k> <C-\><C-N><C-w>k
:tnoremap <C-l> <C-\><C-N><C-w>l

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

Plug 'chriskempson/base16-vim'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

Plug 'Chiel92/vim-autoformat'
let g:formatter_yapf_style = 'facebook'
autocmd BufWrite * :Autoformat

Plug 'rust-lang/rust.vim'

Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'

call plug#end()

" colorscheme base16-material-darker
colorscheme gruvbox
" Linux specific
:autocmd VimEnter * silent! !setxkbmap -option caps:swapescape


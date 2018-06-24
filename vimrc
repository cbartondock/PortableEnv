" syntax and filetype highlighting
filetype plugin on
filetype indent on
syntax enable

" cursor
set ruler
set mouse=a

" disable noises
set noerrorbells
set novisualbell

" encoding
set encoding=utf8

" indentation
set shiftwidth=2
set tabstop=2
set ai "auto indent
set si "smart indent

" status line
set laststatus=2
set t_Co=256
set noshowmode

" line formatting
set wrap linebreak nolist "line wrap
set number "line numbers
set foldcolumn=0

" leaders
nnoremap <Space> <Nop>
:let Leader="\\" "localleader is space
nmap <space> <Leader>

" nerdtree stuff
nnoremap <Leader>f :NERDTreeToggle<CR> " toggle nerdtree
let NERDTreeAutoDeleteBuffer = 1

" airline stuff
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1

" buffer switching stuff
nnoremap <Leader>p :bp<CR>
nnoremap <Leader>n :bn<CR>
nnoremap <Leader>d :bd<CR>
nnoremap <Leader>o :enew<CR>
nnoremap <Leader>sh :new<CR> " horizontal divider
nnoremap <Leader>sv :vnew<CR> " vertical divider


" colorscheme
execute pathogen#infect()
colorscheme desertedocean 

" bells and whistles
execute pathogen#infect()

" colorscheme
colorscheme solarized

" syntax and filetype highlighting
syntax enable
filetype plugin indent on

" leaders
nnoremap <Space> <Nop>
let Leader="\\" "localleader is space
nmap <space> <Leader>

" cursor
set ruler
set mouse=a

" disable noises
set noerrorbells
set novisualbell

" encoding
set encoding=utf8

" tab
set expandtab " converts tabs to spaces
set shiftwidth=2
set tabstop=2

" indentation
set ai "auto indent
set si "smart indent
nnoremap <Leader>i gg=G<CR>

" commenting gcc comments line

" indentation lines
let g:indentLine_char = '┆'
nnoremap <Leader>si :IndentGuidesToggle<CR>
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=white   ctermbg=17
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=white ctermbg=18

" status line
set laststatus=2
set t_Co=256
set noshowmode

" line formatting
set wrap linebreak nolist "line wrap
set number "line numbers
set foldcolumn=0


" nerdtree stuff
nnoremap <Leader>f :NERDTreeToggle<CR>
let NERDTreeAutoDeleteBuffer = 1

" airline stuff
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1

" buffer switching stuff
set hidden
set autowrite
nnoremap <Leader>p :bp<CR>
nnoremap <Leader>n :bn<CR>
nnoremap <Leader>d :bd<CR>
nnoremap <Leader>o :enew<CR>
nnoremap <Leader>sh :new<CR> " horizontal divider
nnoremap <Leader>sv :vnew<CR> " vertical divider

" search in file
set hlsearch
hi Search ctermbg=LightYellow
hi Search ctermfg=Red

" code folding
set foldmethod=indent
set foldcolumn=2
set foldnestmax=10
set nofoldenable

" writing :Goyo

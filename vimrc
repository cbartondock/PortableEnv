" bells and whistles 
execute pathogen#infect()
let ip = $ITERM_PROFILE

" colorscheme
if ip == "Coding"
  colorscheme solarized
elseif ip == "Writing"
  colorscheme minimalist
endif

" syntax and filetype highlighting
syntax enable
filetype plugin indent on

" leaders
nnoremap <Space> <Nop>
let Leader="\\" "localleader is space
map <Space> <Leader>
sunmap <Space>


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
noremap <Leader>i gg=G<CR>

" commenting (c toggles line/selection ce adds an EOL comment)
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDCreateDefaultMappings = 0
map <Leader>cc <plug>NERDCommenterToggle
map <Leader>ce <plug>NERDCommenterAppend
map <Leader>cs <plug>NERDCommenterSexy
map <Leader>cd <plug>NERDCommenterUncomment

" indentation lines
let g:indentLine_char = '┆'
nnoremap <Leader>si :IndentGuidesToggle<CR>
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=white ctermbg=17
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
nnoremap <Leader>ss <C-w>w " switch panes

" search in file
set hlsearch
hi Search ctermbg=LightYellow
hi Search ctermfg=Red

" code folding
set foldmethod=indent
set foldcolumn=2
set foldnestmax=10
set nofoldenable

" writing mode (no distractions)
map <Leader>wr :Goyo<CR>
function! s:goyo_enter()
  let b:quitting = 0
  let b:quitting_bang = 0
  autocmd QuitPre <buffer> let b:quitting = 1
  cabbrev <buffer> q! let b:quitting_bang = 1 <bar> q!
endfunction

function! s:goyo_leave()
  if b:quitting && len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
    if b:quitting_bang
      qa!
    else
      qa
    endif
  endif
endfunction

if ip == "Writing"
  set spell
  autocmd VimEnter * Goyo
  autocmd! User GoyoEnter call <SID>goyo_enter()
  autocmd! User GoyoLeave call <SID>goyo_leave()
endif

" code folding
set foldmethod=syntax
hi FoldColumn guifg=black guibg=black
set foldenable
au BufRead * normal zR
augroup AutoSaveFolds
        autocmd!
        autocmd BufWinLeave ?* mkview
        autocmd BufWinEnter ?* silent loadview
augroup END

" bells and whistles
execute pathogen#infect()
let ip = $ITERM_PROFILE|"Coding"

" leaders
nnoremap <Space> <Nop>
let Leader="\\" "localleader is space
map <Space> <Leader>
sunmap <Space>

" colorscheme
if ip == "Coding"
  colorscheme solarized
elseif ip == "Writing"
  colorscheme minimalist
endif

" fold maps
nnoremap <Leader><space> za
nnoremap <Leader>uf zR

" syntax and filetype highlighting
syntax enable
filetype plugin indent on

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
set wrap linebreak nolist " line wrap
set number " line numbers
set backspace=indent,eol,start " backspace fix

" nerdtree stuff
nnoremap <Leader>f :NERDTreeToggle<CR>
nnoremap <Leader>hf :NERDTreeFind<CR>
let NERDTreeAutoDeleteBuffer = 1
"disable certain shortcuts while focused on NerdTree
autocmd FileType nerdtree noremap <buffer> <Leader>i <nop>
autocmd FileType nerdtree noremap <buffer> <Leader>r <nop>
autocmd FileType nerdtree noremap <buffer> <Leader>n <nop>
autocmd FileType nerdtree noremap <buffer> <Leader>p <nop>
autocmd FileType nerdtree noremap <buffer> <Leader>d <nop>

" airline stuff
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1
let g:airline_theme='luna'

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

" surround
" cs([ changes out ( for [ (switch orientation to drop extra spaces)
" yss[ surrounds with [ (w/ space)

" search in file
set hlsearch
if ip == "Coding"
  hi Search ctermbg=LightYellow
  hi Search ctermfg=Red
elseif ip == "Writing"
  hi Search ctermbg=LightYellow
  hi Search ctermfg=Black
endif

" Select function javascript
autocmd FileType javascript nnoremap <Leader>sf va}o-0<CR>

" Better white space
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

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


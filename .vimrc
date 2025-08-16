set relativenumber                 " relative reference of line
set tabstop=4                      " 1tab = 4word

" ctrl+i commentout "//"
nnoremap <C-i> 0i//<Esc>           
" ctrl+s commentout cancell
nnoremap <C-s> 0xx                 

set cursorline                     " Highlight the current line
set cursorcolumn                   " Highlight the current column

set laststatus=2                   " Always show the status line
set cmdheight=2                    " Allocate 2 lines for the message area

set showmatch                      " Highlight matching parentheses
set helpheight=999                 " Open the help window to fill the screen
set list                           " Show invisible characters

" Invisible character display symbols
set listchars=tab:▸\ ,eol:↲,extends:❯,precedes:❮

augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g`\"" | endif
augroup END

" highlight StatusLine guifg= ff8700 guibg=white

colorscheme pablo

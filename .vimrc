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

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle/')
Plug 'morhetz/gruvbox'
call plug#end()

set background=dark
colorscheme gruvbox 

" Spelling
" set spell spelllang=en_us,cjk

augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g`\"" | endif
augroup END

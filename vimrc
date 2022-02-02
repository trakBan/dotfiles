" Disable compatibility with vi which can cause unexpected issues.
set nocompatible
filetype off
set encoding=utf-8


call plug#begin('~/.vim/plugged')
" Make sure you use single quotes

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tomasiser/vim-code-dark'
Plug 'bling/vim-airline'
Plug 'vim-syntastic/syntastic'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Townk/vim-autoclose'
Plug 'Yggdroot/indentLine'

" Initialize plugin system
call plug#end()

" colorscheme

let g:airline_theme = 'codedark'
colorscheme codedark

" Basic settings
filetype plugin on
filetype indent on
syntax on
"set number
set showcmd
set ruler
set backspace=indent,eol,start
set wildmenu
set hlsearch

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" Mapping
nmap <C-f> :NERDTreeToggle<CR>
nmap <C-s> :w<CR>

"auto closing"

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" syntatic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

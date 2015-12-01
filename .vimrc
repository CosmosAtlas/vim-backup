" ==== Install plugs with vim-plug ====
call plug#begin('~/.vim/plugged')

Plug 'nathanaelkane/vim-indent-guides'
Plug 'LaTeX-Box-Team/LaTeX-Box'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'tpope/vim-sensible'
Plug 'chriskempson/tomorrow-theme'
Plug 'scrooloose/nerdcommenter'
Plug 'flazz/vim-colorschemes'
Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-commentary'
Plug 'Raimondi/delimitMate'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'KabbAmine/vCoolor.vim'
Plug 'sophacles/vim-processing'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'severin-lemaignan/vim-minimap'
Plug 'majutsushi/tagbar'
Plug 'bling/vim-airline'
Plug 'tpope/vim-unimpaired'

call plug#end()

" ==== Personall Preferences ====
" Display line numbers
set nu
" Auto indenting
set ai
" Enable syntax
syntax on
" Set encoding
set encoding=utf-8
" Apply colorscheme
" colorscheme Tomorrow-Night-Bright
set background=dark
" Set filetype options
filetype indent plugin on
" Set mouse integration
set mouse=a



" ==== Toggle NERDTree ====
map <C-n> :NERDTreeToggle<CR>

" ==== Enable easy align ====
vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" ==== Map window switching ====
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" ==== Plugin Specific options ====
" Enable better indent
let g:indent_guides_auto_color = 1
hi IndentGuidesOdd ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey

autocmd VimEnter * :IndentGuidesToggle

" EasyMotion
map / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
set nohlsearch!

" Toogle Tagbar
nmap <C-l> :TagbarToggle<CR>

" Airline 
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts=1

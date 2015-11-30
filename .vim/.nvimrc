" ==== Install plugs with vim-plug ====
call plug#begin('~/.nvim/plugged')

Plug 'nathanaelkane/vim-indent-guides'
Plug 'LaTeX-Box-Team/LaTeX-Box'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'tpope/vim-sensible'
Plug 'chriskempson/tomorrow-theme'
Plug 'powerline/fonts'
Plug 'scrooloose/nerdcommenter'
Plug 'flazz/vim-colorschemes'
Plug 'itchyny/lightline.vim'
Plug 'ervandew/supertab'
Plug 'tpope/vim-commentary'
Plug 'Raimondi/delimitMate'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'

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
colorscheme twilight256
set background=dark
" Set filetype options
filetype indent plugin on




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

" Lightline configuration
let g:lightline = {
	\ 'colorscheme' : 'wombat',
	\ }

" EasyMotion
map / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
set nohlsearch!


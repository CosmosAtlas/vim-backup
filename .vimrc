call plug#begin('~/.vim/plugged')

Plug 'bling/vim-airline'
Plug 'vimwiki/vimwiki'
Plug 'dracula/vim'
Plug 'Valloric/YouCompleteMe'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdcommenter'
Plug 'Raimondi/delimitMate'
Plug 'morhetz/gruvbox'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'ctrlpvim/ctrlp.vim'
Plug 'lervag/vimtex'
Plug 'sheerun/vim-polyglot'

call plug#end()

" Overall settings
set nu
set smartindent
set mouse=a
syntax on
filetype indent plugin on

set ts=4 sw=4
set expandtab

set nocompatible

set encoding=utf8

set background=dark
color gruvbox
let g:gruvbox_guisp_fallback = 'bg'

" Set highlight method for spellchecks
hi clear SpellBad
hi SpellBad cterm=underline

set list
set listchars=tab:▸\ ,eol:¬

let g:indent_guides_auto_color = 1
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

autocmd VimEnter * :IndentGuidesToggle

" EasyMotion
map / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
set nohlsearch

set laststatus=2
" Airline 
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='base16_default'


map <C-t> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" Control-P fuzzy finder
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


let g:vimtex_latexmk_options = "-pdf -verbose -file-line-error -synctex=1"
let g:vimtex_latexmk_callback = 0

let g:polyglot_disabled = ['latex']

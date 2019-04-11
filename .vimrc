

call plug#begin('~/.vim/plugged')

Plug 'bling/vim-airline'
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

call plug#end()



" Overall settings

set nu
set smartindent
set mouse=a
syntax on
filetype indent plugin on

set ts=4 sw=4
set expandtab

set encoding=utf8

set background=dark
let g:gruvbox_guisp_fallback = "bg"
color gruvbox
hi Normal guibg=NONE ctermbg=NONE

set list

set listchars=tab:▸\ ,eol:¬


" ==== Map window switching ====
nmap <silent> <C-Up> :wincmd k<CR>
nmap <silent> <C-Down> :wincmd j<CR>
nmap <silent> <C-Left> :wincmd h<CR>
nmap <silent> <C-Right> :wincmd l<CR>

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
let g:airline_powerline_fonts = 1


map <C-t> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'



let g:webdevicons_enable = 1
let g:webdevicons_enable_unite = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1


let g:vimtex_latexmk_options = "-pdf -verbose -file-line-error -synctex=1"
let g:vimtex_latexmk_callback = 0

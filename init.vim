
"| / ___|___  ___ _ __ ___   ___  ___  |__  / |__  _   _ |
"|| |   / _ \/ __| '_ ` _ \ / _ \/ __|   / /| '_ \| | | ||
"|| |__| (_) \__ \ | | | | | (_) \__ \  / /_| | | | |_| ||
"| \____\___/|___/_| |_| |_|\___/|___/ /____|_| |_|\__,_||
"+-------------------------------------------------------+

" ==== Install plugs with vim-plug ====
call plug#begin('~/.vim/plugged')

Plug 'dag/vim2hs'
Plug 'Valloric/YouCompleteMe'
Plug 'itchyny/vim-haskell-indent'
Plug 'OCamlPro/ocp-indent'
Plug 'scrooloose/syntastic'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'rizzatti/dash.vim'
Plug 'vim-scripts/DrawIt'
Plug 'LaTeX-Box-Team/LaTeX-Box'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'tpope/vim-sensible'
Plug 'chriskempson/tomorrow-theme'
Plug 'scrooloose/nerdcommenter'
Plug 'flazz/vim-colorschemes'
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
Plug 'chrisbra/csv.vim'
Plug 'fadein/FIGlet.vim'
" Plug 'Shougo/neocomplete.vim'
Plug 'jpalardy/vim-slime'

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
colorscheme Monokai
" colorscheme Solarized
" colorscheme default
set background=dark
" Set filetype options
filetype indent plugin on
" Set to save to file automatically
set noswapfile
" Disable bells
set visualbell
" List end of line files and tabs files
set listchars=tab:▸\ ,eol:¬
set list
" Set the mouse 
set mouse=a
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab


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

let g:python_host_prog="/usr/local/bin/python"

" ==== Plugin Specific options ====
" Enable better indent
let g:indent_guides_auto_color = 1
hi IndentGuidesOdd ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey

autocmd VimEnter * :IndentGuidesToggle

" EasyMotion
map / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
set nohlsearch

" Toogle Tagbar
nmap <C-l> :TagbarToggle<CR>

" Airline 
let g:airline#extensions#tabline#enabled = 1

let g:airline_powerline_fonts=1


" Dash plugin
nmap <silent> <leader>d <Plug>DashSearch

" Latex Box
let g:LatexBox_ignore_warnings = [
            \ 'Package hyperref Warning', 
            \ 'Latex Warning',
            \ 'Package caption Warning',
            \ 'Underfull'
            \ ]

let g:slime_target = "tmux"

" Syntastics
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_ocaml_checkers = ['merlin']

" Ocaml
set rtp^="/usr/local/share/ocp-indent/vim"


" ## added by OPAM user-setup for vim / base ## 9a3a300d80f2faeb258825d3e0c1947c ## you can edit, but keep this line
let s:opam_share_dir = system("opam config var share")
let s:opam_share_dir = substitute(s:opam_share_dir, '[\r\n]*$', '', '')

let s:opam_configuration = {}

function! OpamConfOcpIndex()
    execute "set rtp+=" . s:opam_share_dir . "/ocp-index/vim"
endfunction
let s:opam_configuration['ocp-index'] = function('OpamConfOcpIndex')

function! OpamConfMerlin()
    let l:dir = s:opam_share_dir . "/merlin/vim"
    execute "set rtp+=" . l:dir
endfunction
let s:opam_configuration['merlin'] = function('OpamConfMerlin')

let s:opam_packages = ["ocp-index", "merlin"]
let s:opam_check_cmdline = ["opam list --installed --short --safe --color=never"] + s:opam_packages
let s:opam_available_tools = systemlist(join(s:opam_check_cmdline, ' '))
for tool in s:opam_packages
    " Respect package order (merlin should be after ocp-index)
    if count(s:opam_available_tools, tool) > 0
        call s:opam_configuration[tool]()
    endif
endfor
" ## end of OPAM user-setup addition for vim / base ## keep this line


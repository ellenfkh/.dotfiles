
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'fholgado/minibufexpl.vim'
Plug 'majutsushi/tagbar'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-scripts/TaskList.vim'
Plug 'yggdroot/indentline'
Plug 'tpope/vim-fugitive'
"Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'
Plug 'kien/ctrlp.vim'
Plug 'Lokaltog/vim-powerline'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
#Plug 'multilobyte/gtags-cscope'
Plug 'neovim/nvim-lspconfig'

call plug#end()

filetype plugin indent on

set nocompatible
set ruler
set number
set ignorecase
set smartcase
syntax on

set cursorline
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
set hlsearch

set t_Co=256
syntax enable
set background=dark
let g:solarized_termcolors=256
let g:indentLine_color_term = 239

"let g:UltiSnipsExpandTrigger="<c-n>"
"let g:UltiSnipsJumpForwardTrigger="<c-b"
"let g:UltiSnipsJumpBackwardTrigger="<c-z"

let g:Powerline_symbols = 'fancy'

nmap <F3> :TagbarToggle<CR>
nmap <F5> :NERDTreeToggle<CR>
nmap <F4> :TaskList<CR>
nmap <F6> :CtrlP <CR>
inoremap jj <Esc>

au BufNewFile,BufRead * set textwidth=80
au BufNewFile,BufRead *.tex set textwidth=80
au BufNewFile,BufRead *.tex set spell
au BufNewFile,BufRead *.py set wrapmargin=20
au BufNewFile,BufRead *.cpp set textwidth=80
au BufNewFile,BufRead *.hpp set textwidth=80

set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'


set laststatus=2 ruler showcmd
colorscheme slate

" vim-go keyboard mappings for godef conflict with gtags-cscope
let g:go_def_mapping_enabled = 0

" gopls just chews through CPU; not needed with gtags / gnu global
let g:go_gopls_enabled = 0

" run `gogtags` to generate GTAGS and friends
if filereadable("GTAGS")
    let g:GtagsCscope_Auto_Load = 1
endif

augroup filetype_go
    autocmd!
    autocmd BufWritePre *.go call go#auto#fmt_autosave()
augroup end

" To use the default key/mouse mapping:
"let GtagsCscope_Auto_Map = 1
" To ignore letter case when searching:
let GtagsCscope_Ignore_Case = 1
" To use absolute path name:
let GtagsCscope_Absolute_Path = 1
" To deterring interruption:
let GtagsCscope_Keep_Alive = 1
" If you hope auto loading:
let GtagsCscope_Auto_Load = 1
" To use 'vim -t ', ':tag' and '<C-]>'
"set cscopetag
" To auto update tags when a file is saved 
let GtagsCscope_Auto_Update = 1





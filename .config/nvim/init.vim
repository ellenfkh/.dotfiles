call plug#begin('~/.vim/plugged')
Plug 'fholgado/minibufexpl.vim'
Plug 'yggdroot/indentline'
Plug 'kien/ctrlp.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'neovim/nvim-lspconfig'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'yashguptaz/calvera-dark.nvim'
Plug 'shaunsingh/nord.nvim'
Plug 'frenzyexists/aquarium-vim', { 'branch': 'develop' }
Plug 'EdenEast/nightfox.nvim'
Plug 'mangeshrex/uwu.vim'
Plug 'shaunsingh/moonlight.nvim'

call plug#end()

filetype plugin indent on
inoremap jj <Esc>
colorscheme moonlight
set nocompatible
syntax on

set omnifunc=syntaxcomplete#Complete


" LSP "

lua << EOF
local lspconfig = require('lspconfig')

local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', 'gc', '<cmd>lua vim.lsp.buf.incoming_calls()<CR>', opts)

  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'S', '<cmd>lua vim.lsp.buf.workspace_symbol()<CR>', opts)

  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)



end
lspconfig.gopls.setup{
    on_attach = on_attach,
    init_options = { usePlaceholders = true }
}

EOF


set laststatus=2 ruler showcmd
set ruler
set number
set smartcase
set ignorecase

set cursorline
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
set hlsearch

let g:Powerline_symbols = 'fancy'


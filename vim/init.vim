syntax on
filetype plugin indent on

set noerrorbells  " No error bells when you go to the end of your line
set number  " Show line number
set relativenumber  " Show relative line number
set nohlsearch  " Stops highligting search. Not very clear what this does
set hidden  " Does not unload a buffer when abandoned
set tabstop=4 softtabstop=4  " Tab is not 4 spaces
set shiftwidth=4  " Shifts by 4 spaces
set expandtab  " Expand tabs to space
set smartindent  " Duh
set guicursor=  " Cursor in all mode is now same
set termguicolors  " Better color
set smartcase  " Smart case
set smartindent  " Adds auto indent
set noswapfile  " Does not create swp file
set completeopt=menuone,noinsert,noselect  " This is for stopping to auto populate completion box
set nowrap  " Doesn't wrap

set cmdheight=2  " Sets the command height to 2 row
set updatetime=50  " Not sure if we need this since we are not using swp file
set colorcolumn=80  " Sets the gutter at column 80

let mapleader = " "

call plug#begin('~/.vim/plugged')

" color scheme
Plug 'gruvbox-community/gruvbox'

" auto pair
Plug 'jiangmiao/auto-pairs'

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" nvim lsp
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'

" formatters
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" airline
Plug 'vim-airline/vim-airline'

" git
Plug 'tpope/vim-fugitive'

" commenting
Plug 'tpope/vim-commentary'

call plug#end()

" colorscheme
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'
set background=dark

" fzf mappings
nmap <c-p> :GFiles<cr>
nmap <leader>pf :Files<cr>
nmap <leader>ps :Rg<space>

" clipboard mappings
nnoremap <leader>y "+y

" window movement map
nmap <leader>h :wincmd h<cr>
nmap <leader>j :wincmd j<cr>
nmap <leader>k :wincmd k<cr>
nmap <leader>l :wincmd l<cr>

" refresh vim config
nmap <leader><cr> :so ~/.config/nvim/init.vim<cr>

" nvim lsp setup
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
lua require'lspconfig'.tsserver.setup{ on_attach=require'completion'.on_attach }
lua require'lspconfig'.pyls.setup{ on_attach=require'completion'.on_attach }

" nvim lsp mapping
nmap <leader>vD :lua vim.lsp.buf.declaration()<cr>
nmap <leader>vd :lua vim.lsp.buf.definition()<cr>
nmap <leader>vi :lua vim.lsp.buf.implementation()<cr>
nmap <leader>vsh :lua vim.lsp.buf.signature_help()<cr>
nmap <leader>vrr :lua vim.lsp.buf.references()<cr>
nmap <leader>vrn :lua vim.lsp.buf.rename()<cr>
nmap <leader>vh :lua vim.lsp.buf.hover()<cr>
nmap <leader>vca :lua vim.lsp.buf.code_action()<cr>
nmap <leader>vsd :lua vim.lsp.diagnostic.show_line_diagnostics()<cr>

" prettier
let g:prettier#quickfix_enabled = 0
autocmd TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

" git
nmap <leader>gs :G<cr>
nmap <leader>gd :Git diff<cr>

syntax on

set cursorline
set tabstop=4
set shiftwidth=4
set expandtab
set background=dark
set autoread
set nobackup
set nowritebackup
set noswapfile
set relativenumber
set nu rnu
set foldlevelstart=99

syntax enable
set scrolloff=7

call plug#begin('~/.vim/plugged')

"Dont use it 
Plug 'iamcco/coc-tailwindcss'
"Dont use it 
Plug 'ntk148v/vim-horizon'
"Dont use it 
Plug 'roxma/nvim-yarp'
"Dont use it
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar'
Plug 'vim-scripts/indentpython.vim'
Plug 'lepture/vim-jinja'
Plug 'joshdick/onedark.vim'

Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plug 'ryanoasis/vim-devicons'
Plug 'mhinz/vim-startify'

"Autocomplete

"Auto-format plugin
Plug 'sbdchd/neoformat'

"Code Jump Plugin
Plug 'davidhalter/jedi-vim'

"Code checker
Plug 'neomake/neomake'

"Code folding
Plug 'tmhedberg/SimpylFold'

"ripgrep
"Plug 'jremmen/vim-ripgrep'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pappasam/coc-jedi', { 'do': 'npm install --frozen-lockfile && npm build' }
call plug#end()
let g:SimpylFold_docstring_preview = 1


"minimum deoplete settings:
let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

"Jedi Vim
" disable autocompletion, because we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

"Definitions
"<leader>d: go to definition
"K check documentation of class or method
"<leader>n: show the usage of a name in current file
"<leader>r: rename a name

"Code checker
let g:neomake_python_enabled_makers = ['flake8']
call neomake#configure#automake('nrwi', 500)

set shortmess+=c
inoremap <c-c> <ESC>

colorscheme onedark

set encoding=UTF-8
let mapleader = " "
nnoremap <leader><CR> :source ~/.config/nvim/init.vim<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <C-S> :w<CR>
tnoremap <ESC> <C-\><C-N>
inoremap <C-S> <ESC>:write<CR>
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>p :Rg<CR>

autocmd StdinReadPre * let s:std:


"toggle Tagbag
map <Leader>t :TagbarToggle<CR>




" enable line numbersd
let NERDTreeShowLineNumbers=1
" make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber

let $FZF_DEFAULT_OPTS='--reverse'
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }


let g:airline_powerline_fonts = 1

" Focus and redistribute split windows
noremap ff :resize 100 <CR> <BAR> :vertical resize 220<CR>
noremap fm <C-w>=

" Tabs and Buffers
let g:airline#extensions#tabline#fnamemode=':t'
let g:airline#extensions#tabline#enabled=1
nnoremap <Leader>q :bp<CR>
nnoremap <Leader>e :bn<CR>
nnoremap <Leader>w :bd<CR>

" Use CTRL+c to copy to system clipboard
noremap <C-c> "+y 

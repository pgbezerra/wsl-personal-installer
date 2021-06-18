call plug#begin()

Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'kien/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'terryma/vim-multiple-cursors'
Plug 'rizzatti/dash.vim'
Plug 'junegunn/vim-easy-align'
Plug 'majutsushi/tagbar'
Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'

call plug#end()

let g:deoplete#enable_at_startup = 1

set nocompatible
set backspace=indent,eol,start
colorscheme molokai
set number
set laststatus=2
set colorcolumn=80
set hlsearch
set clipboard=unnamed

" Powerline
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

set shiftwidth=4
set softtabstop=4
set expandtab

set wrap
set linebreak
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

nnoremap tp :tabprevious<CR>
nnoremap tn :tabnext<CR>
nnoremap tt :tabnew<CR>
nnoremap tc :tabclose<CR>

let g:nerdtree_tabs_open_on_console_startup=0
nnoremap <C-k><C-b> :NERDTreeTabsToggle<CR>

nmap <F8> :TagbarToggle<CR>

" Dash
nmap <silent> <F1> <Plug>DashSearch

" Easy align
xmap ga <Plug>(EasyAlign)

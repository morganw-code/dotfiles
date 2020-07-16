set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set tabstop=2               " number of columns occupied by a tab character
set softtabstop=2           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=2            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed set number                  " add line numbers set wildmode=longest,list   " get bash-like tab completions
set cc=80                   " set an 80 column border for good coding style
set number
set relativenumber
filetype plugin indent on   " allows auto-indenting depending on file type
syntax on                   " syntax highlighting

" vim-plug
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" CoC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Gruvbox
Plug 'morhetz/gruvbox'

" Nerdtree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Emmet
Plug 'mattn/emmet-vim'

" Auto Omnicompletion
Plug 'BrandonRoehl/auto-omni'

" Rainbow parentheses! yay
Plug 'frazrepo/vim-rainbow'

" Airline (cool statusline/tabline)
Plug 'vim-airline/vim-airline'

" Tender
Plug 'jacoborus/tender.vim'

Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'

" Rust
Plug 'rust-lang/rust.vim'

" Syntax checking (used with rust plugin)
Plug 'vim-syntastic/syntastic'

" Initialize plugin system
call plug#end()

autocmd vimenter * NERDTree

" Autocompletion
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set completeopt=noinsert,menuone

command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Molokai
let g:molokai_original = 1
let g:rehash256 = 1

" Activate rainbow parentheses
let g:rainbow_active = 1

" Colorscheme
colorscheme citylights
if (has("termguicolors"))
 set termguicolors
endif

" Airline font
let g:airline_powerline_fonts = 1

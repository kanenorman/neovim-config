" install plugins
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'kamykn/popup-menu.nvim'
Plug 'kamykn/spelunker.vim'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'MunifTanjim/nui.nvim'
Plug 'smzm/hydrovim'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
call plug#end()

" set text ecoding
set encoding=utf-8

" show line numbers
set number 

"enable syntax highlighting
syntax enable

" tab settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

" set file format
set fileformat=unix

" color theme
colorscheme gruvbox

"nerd tree plugin configurations
autocmd VimEnter * NERDTree | wincmd p

" tabnine auto completion
" execute ":CocInstall coc-tabnine"

" spell checking
set nospell
let g:enable_spelunker_vim = 1
let g:spelunker_highlight_type = 1
let g:spelunker_check_type = 1


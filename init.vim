" install plugins
call plug#begin()
Plug 'lewis6991/gitsigns.nvim'
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
Plug 'ellisonleao/glow.nvim'
Plug 'preservim/tagbar'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'kamykn/popup-menu.nvim'
Plug 'kamykn/spelunker.vim'
Plug 'vim-airline/vim-airline'
Plug 'doums/darcula'
Plug 'neovim/nvim-lspconfig'
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
colorscheme darcula

"nerd tree plugin configurations
autocmd VimEnter * NERDTree | wincmd p

" spell checking
set nospell
let g:enable_spelunker_vim = 1
let g:spelunker_highlight_type = 1
let g:spelunker_check_type = 1

" tagbar
nmap <F10> :TagbarToggle<CR>

" toggle term 
lua require('toggleterm_config')

" gitsigns
lua require('gitsigns_config')

" easy tab toggling
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

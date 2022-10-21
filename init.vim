" install plugins
call plug#begin()
Plug 'lewis6991/gitsigns.nvim'
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
Plug 'ellisonleao/glow.nvim'
Plug 'preservim/tagbar'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'kamykn/spelunker.vim'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'neovim/nvim-lspconfig'
Plug 'MunifTanjim/nui.nvim'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'psf/black', { 'branch': 'stable' }
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
set bg=dark

" spell checking
set nospell
let g:enable_spelunker_vim = 1
let g:spelunker_highlight_type = 1
let g:spelunker_check_type = 1

" tagbar
nmap <F10> :TagbarToggle<CR>

" toggle term 
lua require('toggleterm_config')

" autosave
augroup black_on_save
  autocmd!
  autocmd BufWritePre *.py Black
augroup end

" easy tab toggling
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

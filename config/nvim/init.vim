:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set expandtab
:set smarttab
:set smartindent
:set softtabstop=4
:set mouse=a
":set list!
:set noswapfile
:set splitbelow
:set cursorline
:syntax on

call plug#begin()
" Auto completion
" Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
"Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'feline-nvim/feline.nvim'
Plug 'lewis6991/gitsigns.nvim'

" Icons
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'

" Others
Plug 'tc50cal/vim-terminal' " Vim Terminal
Plug 'preservim/tagbar' " Tagbar for code navigation
Plug 'terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'nekonako/xresources-nvim'

set encoding=UTF-8

call plug#end()

filetype plugin indent on

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call
nmap <F8> :TagbarToggle<CR>
nnoremap <C-s> :split +term<cr>

:set completeopt-=preview " For No Previews
:set termguicolors
:colorscheme xresources
:set bg=dark
:highlight Visual ctermbg=grey guibg=grey
" :set noshowmode " For removing d bottom mode
:set shell=/bin/zsh

" Nerd tree
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let NERDTreeShowHidden=1

"indentLine
let g:indent_blankline_space_char_blankline = ' . '
let g:indent_blankline_char = '┆'
let g:indent_blankline_char_highlight_list = ["IndentBlanklineIndent1", "IndentBlanklineIndent2"]

lua require('feline').setup()
" let g:airline_theme='angr'

" show trailing spaces and spaces before a tab
highlight ExtraWhitespace ctermbg=red
match ExtraWhitespace /\s\+$\| \+\ze\t/

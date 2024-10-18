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
:set list!
:set listchars=space:·,tab:->>
:set noswapfile
:set splitbelow
:set cursorline
:syntax on

call plug#begin()
" Auto completion
" Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
" Plug 'feline-nvim/feline.nvim'
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
:colorscheme gruvbox
:set bg=dark
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
" lightline
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'MyFugitiveHead',
      \   'filetype': 'MyFiletype',
      \   'fileformat': 'MyFileformat',
      \ },
       \ 'separator': { 'left': '▓░', 'right': '░▓' },
        \ 'subseparator': { 'left': '|', 'right': '|' },
      \ }

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

function MyFugitiveHead()
    let head = FugitiveHead()
    if head != ""
        let head = "\uf126 " .. head
    endif
    return head
endfunction
" lua require('feline').setup()
" let g:airline_theme='angr'

" show trailing spaces and spaces before a tab
highlight ExtraWhitespace ctermbg=red
match ExtraWhitespace /\s\+$\| \+\ze\t/

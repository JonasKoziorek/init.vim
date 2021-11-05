set number
set incsearch
set hlsearch
set laststatus=2
set background=dark

" tab settings
set expandtab
set tabstop=4
set shiftwidth=4

" terminal exit remap
tnoremap <Esc> <C-\><C-n>
tnoremap <C-w>h <C-\><C-n><C-w>h
tnoremap <C-w>j <C-\><C-n><C-w>j
tnoremap <C-w>k <C-\><C-n><C-w>k
tnoremap <C-w>l <C-\><C-n><C-w>l

" open terminal
":bel split
":term
":res -10


" plugins
call plug#begin()
  Plug 'preservim/nerdtree'
  Plug 'vim-airline/vim-airline'
  Plug 'morhetz/gruvbox'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'julialang/julia-vim'
call plug#end()


colorscheme gruvbox 

"NERDTree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
"
" airline settings
let g:airline_theme='murmur'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#whitespace#enabled = 0

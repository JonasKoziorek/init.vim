syntax on
set number
set incsearch
set hlsearch
set laststatus=2
set background=dark
set termguicolors
syntax on

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


" plugins
call plug#begin()

    "file explorer
    Plug 'kyazdani42/nvim-tree.lua'

    " bufferline
    Plug 'akinsho/bufferline.nvim'

    " colorschemes
    Plug 'morhetz/gruvbox'
    Plug 'sainnhe/edge'
    Plug 'sainnhe/sonokai'
    Plug 'navarasu/onedark.nvim'
    Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
    Plug 'marko-cerovac/material.nvim'
    Plug 'sainnhe/gruvbox-material'
    
    " julia support
    Plug 'julialang/julia-vim'

    "treesitter 
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

    "lsp
    "Plug 'neovim/nvim-lspconfig'

    "autocomplete
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " dashboard
    Plug 'glepnir/dashboard-nvim'

    " nvim telescope
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

    " lualine
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'kyazdani42/nvim-web-devicons'


call plug#end()

colorscheme edge

let g:dashboard_default_executive ='telescope'

lua <<EOF
    require'lualine'.setup()
    require'nvim-tree'.setup()
    require("bufferline").setup{
    options = {
        diagnostics = "coc"
        }
    }
    --treesitter
    require'nvim-treesitter.configs'.setup {
      highlight = {
        enable = true,
        disable = {},
      },
      indent = {
        enable = false,
        disable = {},
      },
      ensure_installed = {
        "c",
        "cpp",
        "latex",
        "python",
        "vim",
        "julia"
      },
    }
EOF


" nvim tree 
nnoremap <Space>o :NvimTreeToggle<CR>

" buffer movement
nnoremap <Space><Left> :bp<CR>
nnoremap <Space><Right> :bn<CR>
nnoremap <Space>d :bd<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"~~~plugins~~~
call plug#begin('~/.vim/plugged')

" my plugins
Plug 'eluum/vim-autopair'

" colorschemes
Plug 'morhetz/gruvbox'
Plug 'crusoexia/vim-monokai'
Plug 'vv9k/bogster'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'rebelot/kanagawa.nvim'
Plug 'savq/melange-nvim'
Plug 'sainnhe/everforest'
Plug 'zenbones-theme/zenbones.nvim'
Plug 'shaunsingh/nord.nvim'
Plug 'pineapplegiant/spaceduck'
Plug 'ribru17/bamboo.nvim'
Plug 'lifepillar/vim-solarized8', {'branch': 'neovim'}
Plug 'loctvl842/monokai-pro.nvim'
Plug 'NLKNguyen/papercolor-theme'

" other plugins
" Plug 'xuhdev/vim-latex-live-preview'
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'justinmk/vim-syntax-extra'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-python/python-syntax'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'akinsho/bufferline.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nvim-lua/lsp_extensions.nvim'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'lervag/vimtex'
Plug 'NLKNguyen/papercolor-theme'

call plug#end()

" plugin config

" python syntax
let g:python_highlight_builtins = 1
let g:python_highlight_func_calls = 1
let g:python_highlight_class_vars = 1
let g:python_highlight_file_headers_as_comments = 1
let g:python_highlight_string_formatting = 1
let g:python_highlight_string_format = 1

" vimtex
let maplocalleader = "\\"
let g:vimtex_view_method = 'zathura'

"~~~~~~~~~~~~

" line numbers
set number

"~~~custom keybindings~~~
let mapleader = " " " set leader for custom bindings to space prevents namespace collisions

" make window commands a little simpler (ctrl + w sucks to press)
nnoremap <silent><leader>h :wincmd h<CR>
nnoremap <silent><leader>j :wincmd j<CR>
nnoremap <silent><leader>k :wincmd k<CR>
nnoremap <silent><leader>l :wincmd l<CR>
nnoremap <silent><leader>q :wincmd q<CR>
nnoremap <silent><leader>Q :q!<CR>

" faster splitting
nnoremap <silent><leader>H :wincmd v<bar> :wincmd h<CR>
nnoremap <silent><leader>L :wincmd v<CR>  :wincmd l<CR>
nnoremap <silent><leader>J :wincmd s<bar> :wincmd j<CR>
nnoremap <silent><leader>K :wincmd s<CR>  :wincmd k<CR>

" file explorer
nnoremap <silent><leader>e :Vexplore!<CR>
nnoremap <silent><leader>E :Ex<CR>
nnoremap <silent><leader>t :Texplore<CR>
nnoremap <silent>- :Ex<CR>
let g:netrw_banner = 0

" terminal
nnoremap <silent><leader>; :bot split<bar>resize 20<bar>terminal<CR>i
tnoremap <silent><Esc> <C-\><C-n>
tnoremap <silent><C-q> <C-\><C-n>:bd!<CR>

" misc
nnoremap <silent><leader><Bslash> :noh<CR>
nnoremap <silent><tab> I<tab><esc>
nnoremap <silent><s-tab> I<backspace><esc>
nnoremap <silent><leader>= ggVG=''

" copy paste 
nnoremap <silent><leader>p "0p
vnoremap <silent><leader>p "0p

nnoremap <silent><leader>P "+p
vnoremap <silent><leader>P "+p

" enables terminal copy and paste keys
nnoremap <silent><C-V>P "+p
vnoremap <silent><C-V>P "+p

"vnoremap <silent><C-C>"+y

" quick toggle some settings
nnoremap <silent><leader>w :call ToggleWrap()<CR>
function! ToggleWrap()
    if &l:wrap
        let &l:wrap = 0
    else
        let &l:wrap = 1
    endif
endfunction 

let &l:relativenumber = 1

nnoremap <silent> <leader>r :call ToggleRelative()<CR>
function! ToggleRelative()
    if &l:relativenumber
        let &l:relativenumber = 0
    else 
        let &l:relativenumber = 1 
    endif
endfunction

"~~~~~~~~~~~~~~~~~~~~~~~~

" SEARCH STUFF 
set incsearch
set hlsearch

" coding stuff 
syntax on 
set expandtab 
set smartindent 
set nowrap
set smartcase
set ignorecase
set tabstop=4 softtabstop=4
set shiftwidth=4
set nobackup
set nowritebackup
set noswapfile
set noundofile
set mouse=a

set encoding=UTF-8 " allow unicode symbols
set formatoptions-=cro " no comment formatting 

" no replace mode
imap <Insert> <Nop>
inoremap <S-Insert> <Insert>

set backspace=indent,eol,start
set ruler
set suffixes+=.aux,.bbl,.blg,.brf,.cb,.dvi,.idx,.ilg,.ind,.inx,.jpg,.log,.out,.png,.toc
set suffixes-=.h
set suffixes-=.obj

" color scheme
set termguicolors
" colorscheme catppuccin-macchiato
" colorscheme monokai-pro-spectrum
" colorscheme sorbet

" colorscheme solarized8_high
" set bg=light
"
colorscheme PaperColor

" custom highlighting
" hi MatchParen gui=bold guibg=black guifg=white
" hi Keyword gui=italic,bold guibg=dark guifg=#af87af
" hi Comment gui=italic

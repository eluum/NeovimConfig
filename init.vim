"~~~plugins~~~
call plug#begin('~/.vim/plugged')

" my plugins
Plug 'eluum/vim-autopair'

" other plugins
Plug 'morhetz/gruvbox'
" Plug 'xuhdev/vim-latex-live-preview'
Plug 'justinmk/vim-syntax-extra'
Plug 'tikhomirov/vim-glsl' 
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()
"~~~~~~~~~~~~

" line numbers
set number

"~~~custom keybindings~~~
let mapleader = " " " set leader for custom bindings to space prevents namespace collisions

" make window commands a little simpler (ctrl + w sucks to press)
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>q :wincmd q<CR>
nnoremap <leader>Q :q!<CR>

" faster splitting
nnoremap <leader>H :wincmd v<bar> :wincmd h<CR>
nnoremap <leader>L :wincmd v<CR>  :wincmd l<CR>
nnoremap <leader>J :wincmd s<bar> :wincmd j<CR>
nnoremap <leader>K :wincmd s<CR>  :wincmd k<CR>

" file explorer
nnoremap <leader>e :Vexplore!<CR>
nnoremap <leader>E :Ex<CR>
nnoremap <leader>t :Texplore<CR>

" misc
nnoremap <leader><Bslash> :noh<CR>
nnoremap <tab> I<tab><esc>
nnoremap <s-tab> I<backspace><esc>
nnoremap <leader>= ggVG=''

" copy paste 
nnoremap <leader>p "0p
vnoremap <leader>p "0p

nnoremap <leader>P "+p
vnoremap <leader>P "+p

" enables terminal copy and paste keys
nnoremap <C-V>P "+p
nnoremap <C-V>P "+p

" quick toggle some settings
nnoremap <silent> <leader>w :call ToggleWrap()<CR>
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
colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE
hi lineNr guibg=NONE ctermbg=NONE
hi CursorLine guibg=NONE ctermbg=NONE
hi VertSplit guibg=NONE

" grey line numbers
highlight lineNr ctermfg=DarkGrey guifg=DarkGrey

" make highlights legible
highlight Search ctermfg=Black
highlight IncSearch ctermfg=Black
highlight ErrorMsg ctermfg=Black
highlight Error ctermfg=Black
highlight MatchParen ctermfg=Cyan
highlight MatchParen ctermbg=Black

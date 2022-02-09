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
Plug 'Yggdroot/indentLine'

call plug#end()

" plugin config
let g:indentLine_char = '│'
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_first_char = '│'

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
nnoremap <silent><C-V>P "+p

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

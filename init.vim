call plug#begin('~/.local/share/nvim/plugged')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'scrooloose/nerdtree'
  Plug 'scrooloose/nerdcommenter'
  Plug 'qpkorr/vim-bufkill'
  Plug 'rking/ag.vim'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-fugitive'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'jiangmiao/auto-pairs'
call plug#end()

set nocompatible
let mapleader=","
let g:deoplete#enable_at_startup = 1
set clipboard=unnamed
syntax enable
filetype plugin indent on
set hidden
set nu
set hlsearch
set ignorecase
set smartcase
set showmatch
set noerrorbells
set novisualbell
set nobackup
set noswapfile
set nowb
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2

let g:NERDTreeChDirMode       = 2
let g:jsx_ext_required = 0
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](node_modules)$',
  \ }
nnoremap Q <nop>

set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
set guifont=Source\ Code\ Pro\:h15

set laststatus=2

nnoremap <silent><expr> <Leader>h (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"
nnoremap <Leader>a :Ag<space>
map <Leader>nt :NERDTreeToggle<return>
map <Leader>ntf :NERDTreeFind<return>
map <Leader>bl :Gblame<return>
map <leader>g :vimgrep // **/*.<left><left><left><left><left><left><left>
hi Search guibg=peru guifg=wheat
map <leader>n :cn<cr>
map <leader>p :cp<cr>
map 0 ^
map <leader>bda :bufdo bd<cr>
map <leader>db  Vf{%d
nnoremap <leader>l :ls<cr>:b<space>
vnoremap <leader>cp "*y

map j gj
map k gk
set history=1000
runtime macros/matchit.vim

set listchars=tab:>-,trail:·,eol:$
nmap <silent> <leader>s :set nolist!<CR>

let g:loaded_youcompleteme = 1
if !has("gui_running")
endif

" colo base16-solarized
"colo desert

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" " Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)"
hi Search cterm=NONE ctermfg=black ctermbg=white

" Javascript standardjs fixes
"let g:syntastic_javascript_checkers = ['standard']
"autocmd bufwritepost *.js silent !standard --fix %
"set autoread

:set mouse=nicr

set rtp+=/usr/local/opt/fzf

nnoremap <leader>ff :FZF -i<CR>


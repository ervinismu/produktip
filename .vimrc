" ===========================================
" > Author : https://github.com/ervinismu
" ===========================================

" ==================
" >> Basic Config <<
" ==================

" Turn on auto indent when paste, to avoid unexpected effect
set paste

" Show the filename in the window titlebar
set title

" enable hybrid line number
set number relativenumber

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,nbsp:_
set list

" Highlight current line horizontally
set cursorline

" Highlight cursor line vertically
set cursorcolumn

" highlight search
set hlsearch

" Highlight dynamically as pattern is typed
set incsearch

" Enable mouse
set mouse=a

" Enable syntax highlight
syntax on

" option will copy your current indentation when creating a new line
set copyindent
set softtabstop=0
set shiftwidth=4
set tabstop=4
set expandtab

" Set encoding
set encoding=utf8

" airline font
let g:airline_powerline_fonts = 1

" vim-go config
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'


" =====================
" >> NERDTree Config <<
" =====================

" Open FZF Prompt using Ctrl + p
nnoremap <silent> <expr> <c-p> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":FZF \<cr>"

" Enable tab split when search file using FZF
let g:fzf_action = { 'enter': 'tab split' }

" Toggle nerdtree nav using Ctrl + a
nnoremap <C-a> :NERDTreeToggle<CR>

" CATPUCCIN
" This is only necessary if you use "set termguicolors".
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" fixes glitch? in colors when using vim with tmux
set background=dark
set t_Co=256
set termguicolors
let g:airline_theme = 'catppuccin_mocha'
colorscheme catppuccin_mocha

" ========================
" >> Plugins (vim-plug) <<
" ========================

call plug#begin()
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'preservim/nerdtree'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  Plug 'ryanoasis/vim-devicons'
  Plug 'catppuccin/vim', { 'as': 'catppuccin' }
call plug#end()

" NOTE :
" vim-devicons : may be broken if you dont set Droidsans font. reference -> https://github.com/ryanoasis/vim-devicons/wiki/Installation#set-font
" if you dont use GuiVim, change your terminal font using droidSansMono or hackNerd.

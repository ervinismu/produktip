" =========================================================================
" > Author : https://github.com/ervinismu
" > Repository : https://github.com/ervinismu/produktip/blob/main/.vimrc
" =========================================================================

" ==================
" >> Basic Config
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

" Ignore case of searches
set ignorecase

" Highlight dynamically as pattern is typed
set incsearch

" Enable mouse
set mouse=a

" Enable syntax highlight
syntax on

" Set colorscheme to sorbet
colorscheme sorbet

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
" >> NERDTree Config
" =====================

" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p

" Open FZF Prompt using Ctrl + p
nnoremap <silent> <expr> <c-p> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":FZF \<cr>"

" Enable tab split when search file using FZF
let g:fzf_action = { 'enter': 'tab split' }

" Toggle nerdtree nav using Ctrl + t
nnoremap <C-t> :NERDTreeToggle<CR>

"function! RipgrepFzf(query, fullscreen)
"  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
"  let initial_command = printf(command_fmt, shellescape(a:query))
"  let reload_command = printf(command_fmt, '{q}')
"  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
"  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
"endfunction
"command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)


" ========================
" >> Plugins (vim-plug)
" ========================

call plug#begin()
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'preservim/nerdtree'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  Plug 'ryanoasis/vim-devicons'
call plug#end()


" ==========
" >> NOTE
" ==========
" vim-devicons : may be broken if you dont set Droidsans font. reference -> https://github.com/ryanoasis/vim-devicons/wiki/Installation#set-font
" if you dont use GuiVim, change your terminal font using droidSansMono or hackNerd.

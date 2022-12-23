" enable line number
set number

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Open FZF Prompt using Ctrl + p
nnoremap <silent> <expr> <c-p> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":FZF\<cr>"

" highlight current line
set cursorline

" highlight search
set hlsearch

" Ignore case of searches
set ignorecase

" Highlight dynamically as pattern is typed
set incsearch

" Show the filename in the window titlebar
set title

" Plugins
call plug#begin()
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'preservim/nerdtree'
call plug#end()

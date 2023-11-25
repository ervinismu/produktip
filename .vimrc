" ====================================================================
" >> Author : https://github.com/ervinismu
" >> Repository : https://github.com/ervinismu/produktip/blob/main/.vimrc
" ====================================================================

" ===========
" >> Basic <<
" ===========

" Show the filename in the window titlebar
set title

" enable line number
set relativenumber
" set number

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,nbsp:_
set list

" highlight current line
set cursorline

" highlight search
set hlsearch

" Ignore case of searches
set ignorecase

" Highlight dynamically as pattern is typed
set incsearch

" Enable mouse
set mouse=a

" =====================
" >> MarkdownPreview <<
" =====================

" open mardownpreview using Ctrl + s
nmap <C-s> <Plug>MarkdownPreview

" open mardownpreview using Ctrl + s Ctry + s
nmap <C-s><C-s> <Plug>MarkdownPreviewStop

" open mardownpreview using Ctrl + p
nmap <C-p> <Plug>MarkdownPreviewToggle

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 1

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

" ==============
" >> NERDTree <<
" ==============

" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p

" Open FZF Prompt using Ctrl + p
nnoremap <silent> <expr> <c-p> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":FZF \<cr>"

" toggle nerdtree nav using Ctrl + t
nnoremap <C-t> :NERDTreeToggle<CR>

"function! RipgrepFzf(query, fullscreen)
"  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
"  let initial_command = printf(command_fmt, shellescape(a:query))
"  let reload_command = printf(command_fmt, '{q}')
"  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
"  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
"endfunction
"command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

" =================
" >> Vim Airline <<
" =================

" Themes
let g:airline_theme='luna'

let g:easycomplete_tab_trigger="<c-space>"
let g:easycomplete_scheme="sharp"

" ==============
" >> VIM Plug <<
" ==============

call plug#begin()
  Plug 'ap/vim-css-color'
  Plug 'mg979/vim-visual-multi', {'branch': 'master'}
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'preservim/nerdtree'
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'jayli/vim-easycomplete'
  Plug '/Users/backendengineer/Desktop/etc/vim-plugin/komplit'
call plug#end()

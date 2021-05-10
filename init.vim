set nocompatible

call plug#begin(stdpath('data').'/plugged')

" color theme
Plug 'morhetz/gruvbox'

Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'

Plug 'unblevable/quick-scope'

" Plug 'kamykn/spelunker.vim'
" Plug 'kamykn/popup-menu.nvim'

" Plug 'glepnir/zephyr-nvim'
" Plug 'nvim-treesitter/nvim-treesitter'

Plug 'ap/vim-css-color'
Plug 'luochen1990/rainbow'
Plug 'mtdl9/vim-log-highlighting'

" Plug 'yegappan/mru'
Plug 'tpope/vim-fugitive'
Plug 'majutsushi/tagbar'
Plug 'craigemery/vim-autotag'
Plug 'fatih/vim-go'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'

" Plug 'uarun/vim-protobuf'

" code complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" scroll bar in statusline
" Plug 'ojroques/vim-scrollstatus'
"

" common lisp
Plug 'vlime/vlime', {'rtp': 'vim/'}

" rust
Plug 'rust-lang/rust.vim'


Plug 'mhinz/vim-startify'

Plug 'cespare/vim-toml'

Plug 'rizzatti/dash.vim'
Plug 'markonm/traces.vim'

" perforce
Plug 'ngemily/vim-vp4'

Plug 'chaoren/vim-wordmotion'

if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" find and replace
Plug 'brooth/far.vim'

Plug 'liyechen/vim-agriculture'

Plug 'ap/vim-buftabline'
Plug 'itchyny/lightline.vim'
" Plug 'akinsho/nvim-bufferline.lua'

" On-demand lazy load
Plug 'liuchengxu/vim-which-key'

" todo manager
Plug 'wsdjeg/vim-todo'

call plug#end()

colorscheme gruvbox
set background=dark
" colorscheme onedark 
set t_Co=256
set termguicolors
set encoding=utf8
set fileencodings=utf8
set backspace=indent,eol,start
set autoindent
set expandtab
set ts=4
set shiftwidth=4
set fillchars+=vert:\|
set guitablabel=%t

set cursorline

" no bottom status bar
set ls=1

" turn hybrid line numbers on
set number
" set relativenumber

set gfn=Monaco:h13
set guicursor+=a:blinkon0

set nobackup
set noswapfile
se noundofile
set updatetime=100

" wrapping lines without in the middle of a word
set linebreak

syntax on

nmap <C-b> :split<CR>
nmap <C-v> :vsplit<CR>
nmap <C-x> :close<CR>

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" map <C-n> :vertical resize -3<cr>
" map <C-m> :vertical resize +3<cr>
map <C-f> :vertical resize +3<cr>

" resize pane
map <leader>q :vertical resize +5<cr>

set clipboard=unnamedplus

let mapleader = ","

" nnoremap <C-m> <C-]>

" map <C-]> <Plug>(coc-definition)

" Useful mappings for managing tabs
map <leader>o :tabnew<cr>
map <leader>p :tabonly<cr>


" map <C-q> :tabp<cr>
" map <C-e> :tabn<cr>
map <C-q> :bprevious<cr>
map <C-e> :bnext<cr>
map <C-c> :bp<cr>:bd #<cr>
" map <C-c> :bdelete<CR>
" map <C-m> :bdelete<CR>
"
" tab = 2 spaces
autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType ruby setlocal ts=2 sts=2 sw=2
autocmd FileType javascript setlocal ts=2 sts=2 sw=2
autocmd FileType typescript setlocal ts=2 sts=2 sw=2
autocmd FileType yaml setlocal ts=2 sts=2 sw=2
autocmd FileType yml setlocal ts=2 sts=2 sw=2
autocmd FileType toml setlocal ts=2 sts=2 sw=2

" fzf
let g:fzf_command_prefix = 'Fzf'
map <C-p> :FzfFiles<cr>
let g:fzf_preview_window = ['down:83%', 'ctrl-/']
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.88, 'border': 'sharp' } }
" map <leader>f :FzfAg<cr>

set mouse=a

let g:email='gliyechen@hotmail.com'
let g:user='liyechen'

highlight clear SignColumn

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "left"
let NERDTreeShowHidden = 0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize = 32
map <leader>nn :NERDTreeToggle<cr>
map <leader>nf :NERDTreeFind<cr>
" let g:NERDTreeNodeDelimiter = "\u00a0"
let NERDTreeMinimalUI = 1

""""""""""""""""""""""""""""""
" => nerdcommenter
""""""""""""""""""""""""""""""
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1

""""""""""""""""""""""""""""""
" => tagbar
""""""""""""""""""""""""""""""
map <leader>t :TagbarToggle<cr>
let g:tagbar_silent = 1

""""""""""""""""""""""""""""""
" => MRU plugin
""""""""""""""""""""""""""""""
" let MRU_Max_Entries = 400
" map <leader>f :MRU<CR>


""""""""""""""""""""""""""""
" => coc.vim
"""""""""""""""""""""""""""""
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? coc#_select_confirm() :
"       \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()

" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction

" let g:coc_snippet_next = '<tab>'

" map <C-]> :call CocAction('jumpDefinition')<CR>

nmap <Leader>e :call CocAction('diagnosticNext')<CR>
nmap <Leader>q :call CocAction('diagnosticPrevious')<CR>
" nmap <leader>w :call CocAction('fold')<CR>

""""""""""""""""""""""""""""
" => auto pairs
"""""""""""""""""""""""""""""
let g:AutoPairsMultilineClose = 0


""""""""""""""""""""""""""""
" => onedark
"""""""""""""""""""""""""""""
" let g:onedark_terminal_italics = 1


""""""""""""""""""""""""""""
" => vim-go
"""""""""""""""""""""""""""""
let g:go_highlight_types=1
" let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
" let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
map <C-]> <Plug>(coc-definition)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')


" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#formatter = 'default'
" let g:airline#extensions#tabline#fnamemod = ':t'


" fzf arch
" nmap <Leader>/ <Plug>AgRawSearch
vmap <Leader>f <Plug>AgRawVisualSelection
nmap <Leader>f <Plug>AgRawWordUnderCursor



""""""""""""""""""""""""""""
" => signify
"""""""""""""""""""""""""""""


""""""""""""""""""""""""""""
" => rainbow
"""""""""""""""""""""""""""""
let g:rainbow_active=1


""""""""""""""""""""""""""""""""""""""""""""
" avoid scrolling window from switch buffers
" Save current view settings on a per-window, per-buffer basis.
function! AutoSaveWinView()
    if !exists("w:SavedBufView")
        let w:SavedBufView = {}
    endif
    let w:SavedBufView[bufnr("%")] = winsaveview()
endfunction

" Restore current view settings.
function! AutoRestoreWinView()
    let buf = bufnr("%")
    if exists("w:SavedBufView") && has_key(w:SavedBufView, buf)
        let v = winsaveview()
        let atStartOfFile = v.lnum == 1 && v.col == 0
        if atStartOfFile && !&diff
            call winrestview(w:SavedBufView[buf])
        endif
        unlet w:SavedBufView[buf]
    endif
endfunction

" When switching buffers, preserve window view.
if v:version >= 700
    autocmd BufLeave * call AutoSaveWinView()
    autocmd BufEnter * call AutoRestoreWinView()
endif
"""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""
" which key
""""""""""""""""
nnoremap <silent> <leader> :WhichKey ","<CR>
set timeoutlen=500


""""""""""""""""
" lightline
""""""""""""""""
" let g:lightline = {
"     \ 'active': {
"     \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename', 'modified' ] ],
"     \ },
"     \ 'colorscheme': 'seoul256'
" \ }
let g:lightline = {
    \ 'colorscheme': 'seoul256',
    \ 'component_function': {'percent': 'ScrollStatus'}
\ }

""""""""""""""""
" signify
""""""""""""""""
let g:signify_sign_add    = '┃'
let g:signify_sign_change = '┃'
let g:signify_sign_delete = '•'

let g:signify_sign_show_count = 0 " Don’t show the number of deleted lines.

map <leader>d :SignifyDiff<cr>

""""""""""""""""
" gruvbox
""""""""""""""""
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark="hard"

" """"""""""""""""
" " scrollstatus
" """"""""""""""""
" let g:lightline = {
"   \ 'active': {
"   \   'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding', 'filetype', 'charvaluehex']]
"   \ },
"   \ 'component_function': {'percent': 'ScrollStatus'},
"   \ }
" let g:scrollstatus_symbol_track = '-'
" let g:scrollstatus_symbol_bar = '|'


" """"""""""""""""
" " rust.vim
" """"""""""""""""
let g:rustfmt_autosave = 1

" coc-snippets
" map <leader>l <Plug>(coc-snippets-expand)
" vmap <C-j> <Plug>(coc-snippets-select)


""""""""""""""""
" spell
""""""""""""""""
" let g:spelunker_max_suggest_words = 6
" let g:spelunker_disable_email_checking = 1
" let g:spelunker_disable_uri_checking = 1
" let g:spelunker_white_list_for_user = ['garena', 'vimrc', 'plugin', 'plugins', 'Plugin', 'Plugins']


let g:qs_highlight_on_keys = ['f', 'F']


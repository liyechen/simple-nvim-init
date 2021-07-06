set nocompatible

call plug#begin(stdpath('data').'/plugged')

" color theme
Plug 'morhetz/gruvbox'
Plug 'axvr/photon.vim'

Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'unblevable/quick-scope'
Plug 'ap/vim-css-color'
Plug 'luochen1990/rainbow'
Plug 'mtdl9/vim-log-highlighting'
Plug 'tpope/vim-fugitive'
Plug 'majutsushi/tagbar'
Plug 'craigemery/vim-autotag'
Plug 'fatih/vim-go'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-startify'
Plug 'cespare/vim-toml'
Plug 'rizzatti/dash.vim'
Plug 'markonm/traces.vim'
Plug 'chaoren/vim-wordmotion'
Plug 'rhysd/git-messenger.vim'
Plug 'junegunn/vim-easy-align'

" code complete
" Plug 'neoclide/coc.nvim', {'branch': 'release'}


" LSP for neovim >= 0.5.0
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
" dependencies
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
" telescope
Plug 'nvim-telescope/telescope.nvim'

" common lisp
Plug 'vlime/vlime', {'rtp': 'vim/'}

" rust
Plug 'rust-lang/rust.vim'

" perforce
Plug 'ngemily/vim-vp4'

" Plug 'kamykn/spelunker.vim'
" Plug 'kamykn/popup-menu.nvim'
" Plug 'glepnir/zephyr-nvim'
" Plug 'nvim-treesitter/nvim-treesitter'
" Plug 'yegappan/mru'
" Plug 'uarun/vim-protobuf'
" scroll bar in statusline
" Plug 'ojroques/vim-scrollstatus'

if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif

" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'

" find and replace
Plug 'brooth/far.vim'

" Plug 'liyechen/vim-agriculture'

Plug 'ap/vim-buftabline'
Plug 'itchyny/lightline.vim'
" Plug 'akinsho/nvim-bufferline.lua'

" On-demand lazy load
Plug 'liuchengxu/vim-which-key'

" todo manager
Plug 'wsdjeg/vim-todo'

call plug#end()

" colorscheme photon
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
set signcolumn=number

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
map <C-s> :vertical resize -3<cr>
map <C-f> :vertical resize +3<cr>

set clipboard=unnamedplus

let mapleader = ","

" nnoremap <C-m> <C-]>

" map <C-]> <Plug>(coc-definition)

" Useful mappings for managing tabs
" map <leader>o :tabnew<cr>
" map <leader>p :tabonly<cr>


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
" let g:fzf_command_prefix = 'Fzf'
" " map <C-p> :FzfFiles<cr>
" let g:fzf_preview_window = ['down:83%', 'ctrl-/']
" let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.88, 'border': 'sharp' } }
" " map <leader>f :FzfAg<cr>

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
" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~ '\s'
" endfunction

" inoremap <silent><expr> <Tab>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<Tab>" :
"       \ coc#refresh()

" nmap <Leader>e :call CocAction('diagnosticNext')<CR>
" nmap <Leader>q :call CocAction('diagnosticPrevious')<CR>

" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)
" map <C-]> <Plug>(coc-definition)

" " Use K to show documentation in preview window.
" nnoremap <silent> K :call <SID>show_documentation()<CR>

" function! s:show_documentation()
"   if (index(['vim','help'], &filetype) >= 0)
"     execute 'h '.expand('<cword>')
"   elseif (coc#rpc#ready())
"     call CocActionAsync('doHover')
"   else
"     execute '!' . &keywordprg . " " . expand('<cword>')
"   endif
" endfunction

" " Highlight the symbol and its references when holding the cursor.
" autocmd CursorHold * silent call CocActionAsync('highlight')


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


" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#formatter = 'default'
" let g:airline#extensions#tabline#fnamemod = ':t'


" fzf arch
" nmap <Leader>/ <Plug>AgRawSearch
" vmap <Leader>f <Plug>AgRawVisualSelection
" nmap <Leader>f <Plug>AgRawWordUnderCursor



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


""""""""""""""""
" spell
""""""""""""""""
" let g:spelunker_max_suggest_words = 6
" let g:spelunker_disable_email_checking = 1
" let g:spelunker_disable_uri_checking = 1
" let g:spelunker_white_list_for_user = ['garena', 'vimrc', 'plugin', 'plugins', 'Plugin', 'Plugins']

" Plug 'unblevable/quick-scope'
let g:qs_highlight_on_keys = ['f', 'F']

" todo manager
" wsdjeg/vim-todo
match Todo /@todo/



" lua
lua << EOF
local nvim_lsp = require('lspconfig')

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  --Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', '<C-]>', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<leader>q', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', '<leader>e', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)

  -- buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  -- buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  -- buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  -- buf_set_keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  -- buf_set_keymap('n', '<leader>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  -- buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  -- buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)

end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    'documentation',
    'detail',
    'additionalTextEdits',
  }
}

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { 'pyright', 'gopls', 'rust_analyzer', 'clangd' }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    flags = {
      debounce_text_changes = 150,
    }
  }
end

-- comp
vim.o.completeopt = "menuone,noselect"
require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  resolve_timeout = 800;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = {
    border = { '', '' ,'', ' ', '', '', '', ' ' }, -- the border option is the same as `|help nvim_open_win|`
    winhighlight = "NormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder",
    max_width = 120,
    min_width = 60,
    max_height = math.floor(vim.o.lines * 0.3),
    min_height = 1,
  };

  source = {
    path = true;
    buffer = true;
    calc = true;
    nvim_lsp = true;
    nvim_lua = true;
    vsnip = true;
    ultisnips = true;
    luasnip = true;
  };
}

local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

_G.tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-n>"
  elseif vim.fn['vsnip#available'](1) == 1 then
    return t "<Plug>(vsnip-expand-or-jump)"
  elseif check_back_space() then
    return t "<Tab>"
  else
    return vim.fn['compe#complete']()
  end
end

_G.s_tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-p>"
  elseif vim.fn['vsnip#jumpable'](-1) == 1 then
    return t "<Plug>(vsnip-jump-prev)"
  else
    -- If <S-Tab> is not working in your terminal, change it to <C-h>
    return t "<S-Tab>"
  end
end

vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
EOF

" C-y to confirm
inoremap <silent><expr> <C-y>      compe#confirm('<CR>')


" lua
lua << EOF
require('telescope').setup{
  defaults = {
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case'
    },
    prompt_prefix = "> ",
    selection_caret = "> ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "descending",
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        mirror = false,
      },
      vertical = {
        mirror = false,
      },
    },
    file_sorter =  require'telescope.sorters'.get_fuzzy_file,
    file_ignore_patterns = {
        "vendor/*",
        "**/*.pb.go",
    },
    generic_sorter =  require'telescope.sorters'.get_generic_fuzzy_sorter,
    shorten_path = true,
    winblend = 0,
    border = {},
    borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
    color_devicons = true,
    use_less = true,
    set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
    file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,

    -- Developer configurations: Not meant for general override
    buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker
  }
}
EOF

" Using lua functions
nnoremap <C-p> <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>sp <cmd>lua require('telescope.builtin').spell_suggest()<cr>
" nmap <leader>f <cmd>lua require('telescope.builtin').grep_string()<cr>
" vmap <leader>f <cmd>lua require('telescope.builtin').grep_string()<cr>



" " NOTE: You can use other key to expand snippet.

" " Expand
" imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
" smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'

" " Expand or jump
" imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
" smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'

" " Jump forward or backward
" imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
" smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
" imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
" smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'

" " Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
" " See https://github.com/hrsh7th/vim-vsnip/pull/50
" nmap        s   <Plug>(vsnip-select-text)
" xmap        s   <Plug>(vsnip-select-text)
" nmap        S   <Plug>(vsnip-cut-text)
" xmap        S   <Plug>(vsnip-cut-text)


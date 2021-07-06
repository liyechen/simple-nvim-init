local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
local fn = vim.fn    -- to call Vim functions e.g. fn.bufnr()
local g = vim.g      -- a table to access global variables
local opt = vim.opt  -- to set options

-- install plugins
-- git clone https://github.com/savq/paq-nvim.git \
--     "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/pack/paqs/opt/paq-nvim
-- PaqInstall PaqClean PaqUpdate
cmd 'packadd paq-nvim'               -- load the package manager
local paq = require('paq-nvim').paq  -- a convenient alias
paq {'savq/paq-nvim', opt = true}    -- paq-nvim manages itself

-- LSP for neovim >= 0.5.0
paq {'neovim/nvim-lspconfig'}
paq {'hrsh7th/nvim-compe'}
paq {'hrsh7th/vim-vsnip'}
paq {'hrsh7th/vim-vsnip-integ'}
paq {'nvim-lua/popup.nvim'}
paq {'nvim-lua/plenary.nvim'}
paq {'nvim-telescope/telescope.nvim'}
paq {'vlime/vlime', {'rtp': 'vim/'}}
paq {'rust-lang/rust.vim'}
paq {'ngemily/vim-vp4'}
paq {'mhinz/vim-signify'}
paq {'ap/vim-buftabline'}
paq {'itchyny/lightline.vim'}

-- plugins
paq {'morhetz/gruvbox'}
paq {'preservim/nerdcommenter'}
paq {'preservim/nerdtree'}
paq {'jistr/vim-nerdtree-tabs'}
paq {'unblevable/quick-scope'}
paq {'ap/vim-css-color'}
paq {'luochen1990/rainbow'}
paq {'mtdl9/vim-log-highlighting'}
paq {'tpope/vim-fugitive'}
paq {'majutsushi/tagbar'}
paq {'craigemery/vim-autotag'}
paq {'fatih/vim-go'}
paq {'tpope/vim-surround'}
paq {'jiangmiao/auto-pairs'}
paq {'mhinz/vim-startify'}
paq {'cespare/vim-toml'}
paq {'rizzatti/dash.vim'}
paq {'markonm/traces.vim'}
paq {'chaoren/vim-wordmotion'}
paq {'rhysd/git-messenger.vim'}
paq {'junegunn/vim-easy-align'}


-- mapleader
g.mapleader = ","

-- colortheme
cmd 'colorscheme gruvbox'
cmd 'syntax on'
cmd 'highlight clear SignColumn'

-- options
opt.background     = true
opt.t_Co           = 256
opt.encoding       = utf8
opt.fileencodings  = utf8
opt.backspace      = indent,eol,start
opt.autoindent     = true
opt.expandtab      = true
opt.ts             = 4
opt.shiftwidth     = 4
opt.filechars     += vert:\|
opt.termguicolors  = true
opt.guitablabel    = %t
opt.cursorline     = true
opt.signcolumn     = number
opt.ls             = 1
opt.number         = true
opt.gfn            = Monaco:h13
opt.guicursor     += a:blinkon0
opt.nobackup       = true
opt.noswapfile     = true
opt.noundofile     = true
opt.updatetime     = 100
opt.linebreak      = true
opt.clipboard      = unnamedplus
opt.mouse          = a


-- tab size
cmd 'autocmd FileType html setlocal ts=2 sts=2 sw=2'
cmd 'autocmd FileType ruby setlocal ts=2 sts=2 sw=2'
cmd 'autocmd FileType javascript setlocal ts=2 sts=2 sw=2'
cmd 'autocmd FileType typescript setlocal ts=2 sts=2 sw=2'
cmd 'autocmd FileType yaml setlocal ts=2 sts=2 sw=2'
cmd 'autocmd FileType yml setlocal ts=2 sts=2 sw=2'
cmd 'autocmd FileType toml setlocal ts=2 sts=2 sw=2'


-- mapping function
local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- split buffers and close
map('n', '<C-b>', ':split<CR>')
map('n', '<C-v>', ':vsplit<CR>')
map('n', '<C-x>', ':close<CR>')

-- move cursor to panes
map('n', '<C-j>', '<C-W>j')
map('n', '<C-k>', '<C-W>k')
map('n', '<C-h>', '<C-W>h')
map('n', '<C-l>', '<C-W>l')

-- resize pane
map('n', '<C-s>', ':vertical resize -3<cr>')
map('n', '<C-f>', ':vertical resize +3<cr>')

-- buffer switch
map('n', '<C-q>', ':bprevious<cr>')
map('n', '<C-e>', ':bnext<cr>')
map('n', '<C-c>', ':bp<cr>:bd #<cr>')


-- global variables
g["g:email"] = "gliyechen@hotmail.com"
g["g:user"] = "liyechen"
g["g:go_def_mode"] = "gopls"
g["g:go_info_mode"] = "gopls"


-- plugins config

-- nerdtree
g["g:NERDTreeWinPos"]   = "left"
g["NERDTreeShowHidden"] = 0
g["NERDTreeIgnore"]     = ['\.pyc$', '__pycache__']
g["g:NERDTreeWinSize"]  = 32
g["NERDTreeMinimalUI"]  = 1
map('n', '<leader>nn', ':NERDTreeToggle<cr>')
map('n', '<leader>nf', ':NERDTreeFind<cr>')

-- nerdcommenter
g["g:NERDSpaceDelims"]     = 1
g["g:NERDCompactSexyComs"] = 1

-- tagbar
g["g:tagbar_silent"] = 1
map('n', '<leader>t', ':TagbarToggle<cr>')

-- autopairs
g["g:AutoPairsMultilineClose"] = 0

-- vim-go
g["g:go_highlight_types"]           = 1
g["g:go_highlight_functions "]      = 1
g["g:go_highlight_function_calls "] = 1
g["g:go_highlight_extra_types "]    = 1

-- rainbow
g["g:rainbow_active"] = 1

-- lightline
g["g:lightline"] = { 'colortheme': 'seoul256', 'component_function': {'percent': 'ScrollStatus'} }

-- signify
g["g:signify_sign_add"]        = '┃'
g["g:signify_sign_change"]     = '┃'
g["g:signify_sign_delete"]     = '•'
g["g:signify_sign_show_count"] = 0
map('n', '<leader>d', ':SignifyDiff<cr>')

-- gruvbox
g["g:gruvbox_italic"]        = 1
g["g:gruvbox_contrast_dark"] = "hard"

-- rust.vim
g["g:rustfmt_autosave"] = 1

-- quick-scope
g["g:qs_highlight_on_keys"] = ['f', 'F']


-- LSP config
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

-- Complete
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

-- TODO:
-- inoremap <silent><expr> <C-y>      compe#confirm('<CR>')














-- buffer view setting function
-- local function AutoSaveWinView()
--     if !fn.exists("w:SavedBufView") then
--         g["w:SavedBufView"] = {}
--     end
--     g["w:SavedBufView"][fn.bufnr("%")] = fn.winsaveview()
-- end

-- local function AutoRestoreWinView()
--     local buf = fn.bufnr("%")
--     if fn.exists("w:SavedBufView") && fn.has_key(g["w:SavedBufView"], buf) then
--         local v = fn.winsaveview()
--         local atStartOfFile = v.lnum == 1 && v.col == 0
--         if atStartOfFile && !&diff then
--             fn.winrestview(g["w:SavedBufView"][buf])
--         end
--         g["w:SavedBufView"][buf] = nil
--     end
-- end
-- TODO: use lua instead of vim script
vim.api.nvim_exec(
[[
function! AutoSaveWinView()
    if !exists("w:SavedBufView")
        let w:SavedBufView = {}
    endif
    let w:SavedBufView[bufnr("%")] = winsaveview()
endfunction

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

if v:version >= 700
    autocmd BufLeave * call AutoSaveWinView()
    autocmd BufEnter * call AutoRestoreWinView()
endif
]],
false)


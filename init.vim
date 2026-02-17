" Common settings
set mouse=a                           " enable mouse
let mapleader = ","                   " set leader key to comma
set nocompatible                      " not compatible with vi
set number                            " line number
set numberwidth=1                     " line numbers gutter autowidth
set cursorline                        " highlight current line
set noshowmatch                       " don't jump to pair bracket
set autoread                          " reload files when changes happen outside Vim
set autowrite                         " auto write buffer on certain events
set hidden                            " keep changes in buffer when quitting window
set noswapfile                        " disable swap files
set scrolloff=7                       " line padding when scrolling
set textwidth=0                       " when line wrap occurs
set wrapmargin=0                      " disable auto line wrapping
set clipboard=unnamedplus             " use system clipboard
let g:c_syntax_for_h = 1              " .h file use C filetype instead of C++
set encoding=utf-8                    " utf-8 encoding
set shellredir='>'                    " don't include stderr when reading a command

" Intuitive split opening
set splitbelow                        " split below
set splitright                        " split right
set equalalways                       " equalize window sizes

" Tab settings
set tabstop=4                         " tab size
set showtabline=2                     " always display tabline
set softtabstop=4
set shiftwidth=4
set expandtab                         " tab to space
set autoindent
set smartindent

" File search
set ignorecase                        " case insensitive
set smartcase
set hlsearch                          " match highlight
set incsearch

" Status
set laststatus=2                      " always a statusline (all windows)
set showcmd                           " show current partial command in the bottom right
set noshowmode                        " don't show current mode (i.e., --INSERT--)

set ch=0                              " make command line invisible when not typing command

set fileformat=unix
filetype indent on                    " load filetype-specific indent files

inoremap jk <esc>

call plug#begin('~/.vim/plugged')
    " Lang
    Plug 'ziglang/zig.vim'
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }
    " LSP
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'saadparwaiz1/cmp_luasnip'
    Plug 'L3MON4D3/LuaSnip'

    " Copilot
    Plug 'github/copilot.vim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'CopilotC-Nvim/CopilotChat.nvim'
    
    " Formatting
    Plug 'sbdchd/neoformat'

    " Colorscheme manager
    Plug 'zaldih/themery.nvim'             " themery theme manager
    " Colorschemes
    Plug 'arzg/vim-colors-xcode'           " colorscheme xcode
    Plug 'morhetz/gruvbox'                 " colorscheme gruvbox
    Plug 'mhartington/oceanic-next'        " colorscheme OceanicNext
    Plug 'sainttttt/flesh-and-blood'       " colorscheme flesh-and-blood
    Plug 'ficcdaf/ashen.nvim'              " colorscheme ashen
    Plug 'slugbyte/lackluster.nvim'        " colorscheme lackluster
    Plug 'IllegalLeft/honeywell.vim'       " colorscheme honeywell
    Plug 'water-sucks/darkrose.nvim'       " colorscheme darkrose
    Plug 'paulfrische/reddish.nvim'        " colorscheme reddish
    Plug 'luisiacc/the-matrix.nvim'        " colorscheme thematrix
    Plug 'Yazeed1s/oh-lucy.nvim'           " colorscheme oh-lucy
    Plug 'rebelot/kanagawa.nvim'           " colorscheme kanagawa
    Plug 'aliqyan-21/darkvoid.nvim'        " colorscheme darkvoid
    Plug 'sainnhe/sonokai'                 " colorscheme sonokai
    Plug 'Yazeed1s/minimal.nvim'           " colorscheme minimal
    Plug 'Mofiqul/adwaita.nvim'            " colorscheme adwaita
    Plug 'rockerBOO/boo-colorscheme-nvim'  " colorscheme boo
    Plug 'zenbones-theme/zenbones.nvim'    " colorscheme zenbones
    Plug 'folke/tokyonight.nvim'           " colorscheme tokyonight
    
    " Transparency
    Plug 'xiyaowong/nvim-transparent'

    " Startup screen
    Plug 'igorktech/rain.nvim'
    Plug 'folke/snacks.nvim'
    
    " Yank highlight
    Plug 'machakann/vim-highlightedyank'

    Plug 'Pocco81/auto-save.nvim'
    Plug 'justinmk/vim-sneak'

    " Icons
    Plug 'lewis6991/gitsigns.nvim'         " git status
    Plug 'nvim-tree/nvim-web-devicons'
    Plug 'nanozuki/tabby.nvim'             " tab bar plugin
    Plug 'nvim-lualine/lualine.nvim'       " status line
    Plug 'prichrd/netrw.nvim'              " netrw
    
    " Code snaps
    Plug 'michaelrommel/nvim-silicon'

    " Comment
    Plug 'tpope/vim-commentary'

    " Hex color preview
    Plug 'norcalli/nvim-colorizer.lua'
    
    Plug 'prettier/vim-prettier', {
      \ 'do': 'yarn install --frozen-lockfile --production',
      \ 'for': ['javascript', 'typescript', 'typescriptreact', 'javascriptreact', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
    
    Plug 'bmatcuk/stylelint-lsp'
    
    " Telescope
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.4' }
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
    
    Plug 'ray-x/lsp_signature.nvim'
call plug#end()

" Neovide settings
let g:neovide_floating_shadow = v:false

" Netrw file explorer settings
let g:netrw_banner = 0                " hide banner above files
let g:netrw_liststyle = 3             " tree instead of plain view
let g:netrw_browse_split = 0          " vertical split window when Enter pressed on file

" Automatically format frontend files with prettier after file save
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

" Disable quickfix window for prettier
let g:prettier#quickfix_enabled = 0

" Turn on vim-sneak
let g:sneak#label = 1

" Yank highlight
let g:highlightedyank_highlight_duration = 300

" Set termguicolors 
if (has('termguicolors'))
    set termguicolors
endif

" Bindings
nnoremap ,<space> :nohlsearch<CR>


" Map to open netrw in a new tab
" nnoremap <leader>e :tabnew \| :Explore<CR>
nnoremap <leader>e :Lexplore<CR>

" jump to the netrw tree (left window)
nnoremap <leader>h <C-w>h
" jump back to the file (right window)
nnoremap <leader>l <C-w>l

" Auto close netrw when opening a file
" autocmd FileType netrw setlocal bufhidden=wipe
" Disables line numbers in the tree and keeps signcolumn visible for icons/signs.
augroup NetrwDrawer
  autocmd!
  autocmd FileType netrw setlocal nonumber norelativenumber signcolumn=yes nowrap
augroup END

" Netrw (drawer style)
let g:netrw_banner = 0
let g:netrw_liststyle = 3        " tree view
let g:netrw_winsize = 25         " sidebar width (% of screen)
let g:netrw_browse_split = 4     " open files in the *previous* window (keep netrw open)

lua << EOF
vim.o.guifont = "Liga SFMono Nerd Font:h13" -- text below applies for VimScript

-- Set completeopt for better completion experience
vim.o.completeopt = 'menuone,noselect'

-- Luasnip setup
local luasnip = require 'luasnip'
local async = require "plenary.async"

-- nvim-cmp setup
local cmp = require 'cmp'
cmp.setup {
  completion = {
    autocomplete = false
  },
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end,
    ['<S-Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item() 
      elseif luasnip.jumpable(-1) then
        vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-jump-prev', true, true, true), '')
      else
        fallback()
      end
    end,
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  },
}

-- Setup language servers
local nvim_lsp = require('lspconfig')

-- Common on_attach function to set up keybindings
local function on_attach(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, bufopts)
  vim.keymap.set('n', ']d', vim.diagnostic.goto_next, bufopts)
  vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, bufopts)

  if client.supports_method('textDocument/formatting') then
    vim.keymap.set('n', '<space>f', function()
      vim.lsp.buf.format({ async = true })
    end, bufopts)
  else
    vim.keymap.set('n', '<space>f', ':Neoformat<CR>', bufopts)
  end

  require "lsp_signature".on_attach({
      bind = true,
      floating_window = true,
      floating_window_above_cur_line = true,
      floating_window_off_x = 20,
      doc_lines = 10,
      hint_prefix = '👻 '
    }, bufnr)
end

-- Stylelint format after save
require'lspconfig'.stylelint_lsp.setup{
  settings = {
    stylelintplus = {
      --autoFixOnSave = true,
      --autoFixOnFormat = true,
    }
  }
}
 
-- Language server setups
local servers = { 'pyright', 'clangd', 'lua_ls', 'rust_analyzer', 'solargraph', 'gopls', 'zls', 'bashls' }
for _, lsp in ipairs(servers) do
  if lsp == "clangd" then
    nvim_lsp[lsp].setup {
      on_attach = on_attach,
      flags = {
        debounce_text_changes = 150,
      },
      cmd = { "clangd", "--background-index", "--clang-tidy", "--fallback-style=LLVM" },
      filetypes = { "c", "cpp" },
    }
  else
    nvim_lsp[lsp].setup {
      on_attach = on_attach,
      flags = {
        debounce_text_changes = 150,
      }
    }
  end
end

-- nvim-treesitter
require'nvim-treesitter.configs'.setup {
  ensure_installed = {"c","cpp","css","python","go","html","javascript","json",
  "dockerfile","lua","markdown","matlab","ruby","rust","typescript","vim","vimdoc", "zig", "bash"},

  sync_install = false,
  auto_install = true,
  ignore_install = { "" },

  highlight = {
    enable = true,
    disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,
    additional_vim_regex_highlighting = false,
  },
}

-- foldexpr for treesitter
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

vim.api.nvim_create_autocmd({ "BufReadPost", "FileReadPost" }, {
  pattern = "*",
  callback = function()
    vim.cmd("normal! zR")
  end,
})

-- gitsigns
require('gitsigns').setup {
    signs = {
    add          = { text = '┃' },
    change       = { text = '┃' },
    delete       = { text = '•' },
    topdelete    = { text = '‾' },
    changedelete = { text = '~' },
    untracked    = { text = '┆' },
  }
}

-- devicons
require'nvim-web-devicons'.setup {
 override = {
  zsh = {
    icon = "",
    color = "#428850",
    cterm_color = "65",
    name = "Zsh"
  }
 };
 color_icons = true;
 default = true;
 strict = true;
 override_by_filename = {
  [".gitignore"] = {
    icon = "",
    color = "#f1502f",
    name = "Gitignore"
  }
 };
 override_by_extension = {
  ["log"] = {
    icon = "",
    color = "#81e043",
    name = "Log"
  }
 };
 override_by_operating_system = {
  ["apple"] = {
    icon = "",
    color = "#A2AAAD",
    cterm_color = "248",
    name = "Apple",
  },
 };
}

-- lualine.nvim
require('lualine').setup {
  options = {
    theme = auto,
    component_separators = '',
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
    lualine_b = { 'filename', 'branch' },
    lualine_c = {
      '%=', 
    },
    lualine_x = {},
    lualine_y = { 'filetype', 'progress' },
    lualine_z = {
      { 'location', separator = { right = '' }, left_padding = 2 },
    },
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {},
  extensions = {},
}

-- Netrw
require'netrw'.setup{
  icons = {
    symlink = '', 
    directory = '', 
    file = '', 
  },
  use_devicons = true,
  mappings = {},
}

-- Code Snaps
require'nvim-silicon'.setup(
{
    theme = "Visual Studio Dark+",
    font = "Liga SFMono Nerd Font=34",
    output = function()
        return "~/Pictures/CodeSnaps/" .. os.date("!%Y-%m-%dT%H-%M-%S") .. "_code.png"
    end,
})

-- Colorizer
require("colorizer").setup()

-- tabby.nvim
require('tabby').setup({
  tabline = require('tabby.presets').active_wins_at_tail,
})

-- rain.nvim
require("rain").setup({
  theme = {
    symbols = { "❦", "🩸", "❢", "●", "·"},
    colors = { "#8B0000", "#B22222", "#DC143C", "#B40707", "#FFDEAD" },
  },
  max = 75,                       
  interval = 100,                 
  screensaver = 1000 * 60 * 5,      
  filetypes = { "dashboard", "alpha", "ministarter" },
  winblend = 100,                 
  tail = { enable = true, length = 5, delta = 5, dynamic = true }, -- enable/disable tail
  wind = { enable = true, speed = 4, direction = "both" }, -- enable/disable wind effect
 
})

-- snacks.nvim
require("snacks").setup({
  dashboard = {
    pane_gap = 15,
    preset = {
      keys = {
        { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
        { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
        { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
        { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
        { icon = " ", key = "c", desc = "Config", action = ":e $MYVIMRC" },
        { icon = " ", key = "s", desc = "Restore Session", section = "session" },
        { icon = " ", key = "q", desc = "Quit", action = ":qa" },
      },
      header = [[
  ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓
  ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒
 ▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░
▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██
 ▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒
 ░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░
 ░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░
    ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░
          ░    ░  ░    ░ ░        ░   ░         ░
                                 ░
      ]],
    },
    formats = {
      key = function(item)
        return {
          { "[", hl = "special" },
          { item.key, hl = "key" },
          { "]", hl = "special" },
        }
      end,
    },
    sections = {
      {
        {
          pane = 1,
          section = "terminal",
          cmd = "img2art ~/.config/nvim/dashboard_img/hq.png --threshold 50 --scale .26 --quant 16 --with-color",
          height = 21,
          width = 75,
          padding = 1,
        },
        {
          pane = 2,
          {
            section = "keys",
            gap = 1,
            padding = 1,
          },
          {
            icon = " ",
            title = "Recent Files",
          },
          {
            section = "recent_files",
            opts = { limit = 3 },
            indent = 2,
            padding = 1,
          },
          {
            icon = " ",
            title = "Projects",
          },
          {
            section = "projects",
            opts = { limit = 3 },
            indent = 2,
            padding = 1,
          },
        },
        enabled = function() return vim.o.columns > 135 end,
      },
      {
        pane = 1,
        { section = "header" },
        {
          section = "keys",
          gap = 1,
          padding = 1,
        },
        enabled = function() return vim.o.columns <= 135 end,
      },
    },
  },
})

vim.api.nvim_set_hl(0, "SnacksDashboardKey", { fg = "#5ceef6" })
vim.api.nvim_set_hl(0, "SnacksDashboardTitle", { fg = "#c49aee" })
vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = "#c49aee" })

-- Themery setup
require("themery").setup({
  themes = {
    {
      name = "Xcode Light Green Comments",
      colorscheme = "xcodelight",
      before = [[
        vim.g.xcodelight_green_comments = 1
      ]],
    },
    {
      name = "Xcode Dark Green Comments",
      colorscheme = "xcodedark",
      before = [[
        vim.g.xcodedark_green_comments = 1
      ]],
    },
    {
      name = "Xcode Light",
      colorscheme = "xcodelight",
      before = [[
        vim.g.xcodelight_green_comments = 0
      ]],
    },
    {
      name = "Xcode Dark",
      colorscheme = "xcodedark",
      before = [[
        vim.g.xcodedark_green_comments = 0
      ]],

    },
    {
      name = "Xcode WWDC",
      colorscheme = "xcodewwdc",
    },
    {
      name = "Xcode Dark HC",
      colorscheme = "xcodedarkhc",
    },
    {
      name = "Xcode Light HC",
      colorscheme = "xcodelighthc",
    },
    {
      name = "Cursor Dark Core",
      colorscheme = "cursor-dark-core",
      before = [[
        vim.opt.background = "dark"
      ]],
    },
    {
      name = "Gruvbox Dark",
      colorscheme = "gruvbox",
      before = [[
        vim.opt.background = "dark"
      ]],
    },
    {
      name = "Gruvbox Light",
      colorscheme = "gruvbox",
      before = [[
        vim.opt.background = "light"
      ]],
    },
    {
      name = "Flesh and Blood",
      colorscheme = "flesh-and-blood",
      before = [[
        vim.opt.background = "dark"
      ]],
      after = [[
        -- Override the Normal highlight group to set your desired background.
        vim.cmd("highlight Normal guibg=#1a1a1a")
      ]]
    },
    {
      name = "Ashen",
      colorscheme = "ashen",
    },
    {
      name = "Lackluster",
      colorscheme = "lackluster-dark",
      before = [[
        vim.opt.background = "dark"
      ]],
    },
    {
      name = "Honeywell",
      colorscheme = "honeywell",
      before = [[
        vim.opt.background = "dark"
      ]],
    },
    {
      name = "Darkrose",
      colorscheme = "darkrose",
      before = [[
        vim.opt.background = "dark"
      ]],
    },
    {
      name = "Reddish",
      colorscheme = "reddish",
      before = [[
        vim.opt.background = "dark"
      ]],
    },
    {
      name = "The Matrix",
      colorscheme = "thematrix",
      before = [[
        vim.opt.background = "dark"
      ]],
    },
    {
      name = "Oh Lucy",
      colorscheme = "oh-lucy-evening",
      before = [[
        vim.opt.background = "dark"
      ]],
    },
    {
      name = "Kanagawa",
      colorscheme = "kanagawa-dragon",
    },
    {
      name = "Darkvoid",
      colorscheme = "darkvoid",
    },
    {
      name = "Oceanic Next",
      colorscheme = "OceanicNext",
    },
    {
      name = "Sonokai",
      colorscheme = "sonokai",
      before = [[
        vim.opt.background = "dark"
        vim.g.sonokai_style = "shusia"
      ]],
    },
    {
      name = "Minimal",
      colorscheme = "minimal",
    },
    {
      name = "Minimal-base16",
      colorscheme = "minimal-base16",
    },
    {
      name = "Adwaita Dark",
      colorscheme = "adwaita",
      before = [[
        vim.opt.background = "dark"
        vim.g.adwaita_darker = true
      ]],
    },
    {
      name = "Adwaita Light",
      colorscheme = "adwaita",
      before = [[
        vim.opt.background = "light"
        vim.g.adwaita_darker = false
      ]],
    },
    {
      name = "Boo",
      colorscheme = "boo",
      before = [[
        vim.opt.background = "dark"
        vim.g.boo_colorscheme_italic = true
      ]],
    },
    {
      name = "Zenbones",
      colorscheme = "neobones",
      before = [[
        vim.opt.background = "dark"
      ]],
    },
    {
      name = "Tokyonight",
      colorscheme = "tokyonight",
      before = [[
        vim.opt.background = "dark"
      ]],
    },
  },
})

--Set CopilotC-Nvim
require("CopilotChat").setup {
  -- See Configuration section for options
}
EOF

" Delete buffer while keeping window layout (don't close buffer's windows).
" Version 2008-11-18 from http://vim.wikia.com/wiki/VimTip165
if v:version < 700 || exists('loaded_bclose') || &cp
  finish
endif
let loaded_bclose = 1
if !exists('bclose_multiple')
  let bclose_multiple = 1
endif

" Display an error message.
function! s:Warn(msg)
  echohl ErrorMsg
  echomsg a:msg
  echohl NONE
endfunction

" Command ':Bclose' executes ':bd' to delete buffer in current window.
" The window will show the alternate buffer (Ctrl-^) if it exists,
" or the previous buffer (:bp), or a blank buffer if no previous.
" Command ':Bclose!' is the same, but executes ':bd!' (discard changes).
" An optional argument can specify which buffer to close (name or number).
function! s:Bclose(bang, buffer)
  if empty(a:buffer)
    let btarget = bufnr('%')
  elseif a:buffer =~ '^\d\+$'
    let btarget = bufnr(str2nr(a:buffer))
  else
    let btarget = bufnr(a:buffer)
  endif
  if btarget < 0
    call s:Warn('No matching buffer for '.a:buffer)
    return
  endif
  if empty(a:bang) && getbufvar(btarget, '&modified')
    call s:Warn('No write since last change for buffer '.btarget.' (use :Bclose!)')
    return
  endif
  " Numbers of windows that view target buffer which we will delete.
  let wnums = filter(range(1, winnr('$')), 'winbufnr(v:val) == btarget')
  if !g:bclose_multiple && len(wnums) > 1
    call s:Warn('Buffer is in multiple windows (use ":let bclose_multiple=1")')
    return
  endif
  let wcurrent = winnr()
  for w in wnums
    execute w.'wincmd w'
    let prevbuf = bufnr('#')
    if prevbuf > 0 && buflisted(prevbuf) && prevbuf != btarget
      buffer #
    else
      bprevious
    endif
    if btarget == bufnr('%')
      " Numbers of listed buffers which are not the target to be deleted.
      let blisted = filter(range(1, bufnr('$')), 'buflisted(v:val) && v:val != btarget')
      " Listed, not target, and not displayed.
      let bhidden = filter(copy(blisted), 'bufwinnr(v:val) < 0')
      " Take the first buffer, if any (could be more intelligent).
      let bjump = (bhidden + blisted + [-1])[0]
      if bjump > 0
        execute 'buffer '.bjump
      else
        execute 'enew'.a:bang
      endif
    endif
  endfor
  execute 'bdelete'.a:bang.' '.btarget
  execute wcurrent.'wincmd w'
endfunction
command! -bang -complete=buffer -nargs=? Bclose call <SID>Bclose(<q-bang>, <q-args>)
nnoremap <silent> <Leader>bd :Bclose<CR>

map gn :bn<cr>
map gp :bp<cr>
map gw :Bclose<cr>

" Run Python and C files by Ctrl+h
autocmd FileType python map <buffer> <C-h> :w<CR>:exec '!python3.11' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <C-h> <esc>:w<CR>:exec '!python3.11' shellescape(@%, 1)<CR>

autocmd FileType c map <buffer> <C-h> :w<CR>:exec '!gcc' shellescape(@%, 1) '-o out; ./out'<CR>
autocmd FileType c imap <buffer> <C-h> <esc>:w<CR>:exec '!gcc' shellescape(@%, 1) '-o out; ./out'<CR>

autocmd FileType sh map <buffer> <C-h> :w<CR>:exec '!bash' shellescape(@%, 1)<CR>
autocmd FileType sh imap <buffer> <C-h> <esc>:w<CR>:exec '!bash' shellescape(@%, 1)<CR>

" For all files
autocmd BufEnter * set colorcolumn=79

set relativenumber
set rnu

" Transparency
let g:transparent_enabled = v:false

" Terminal settings
tnoremap <Esc> <C-\><C-n>
nnoremap <leader>t :tabnew \| :terminal<CR>

" Telescope bindings
nnoremap ,f <cmd>Telescope find_files<cr>
nnoremap ,g <cmd>Telescope live_grep<cr>

" Go to next or prev tab by H and L accordingly
nnoremap H gT
nnoremap L gt

" Autosave plugin
lua << EOF
require("auto-save").setup({})
EOF

" Telescope fzf plugin
lua << EOF
local actions = require('telescope.actions')
local action_state = require('telescope.actions.state')

require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["<CR>"] = function(prompt_bufnr)
          local selected_entry = action_state.get_selected_entry()
          actions.close(prompt_bufnr)
          vim.cmd('tabedit ' .. selected_entry.path)
        end,
        ["jk"] = actions.close  -- Bind jk to close Telescope in insert mode
      },
      n = {
        ["<CR>"] = function(prompt_bufnr)
          local selected_entry = action_state.get_selected_entry()
          actions.close(prompt_bufnr)
          vim.cmd('tabedit ' .. selected_entry.path)
        end,
        ["jk"] = actions.close  -- Bind jk to close Telescope in normal mode
      }
    }
  }
}

-- Load the fzf extension after setting up Telescope
require('telescope').load_extension('fzf')
EOF

" White colors for LSP messages in code
hi DiagnosticError guifg=White
hi DiagnosticWarn  guifg=White
hi DiagnosticInfo  guifg=White
hi DiagnosticHint  guifg=White

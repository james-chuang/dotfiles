-- [[ Set Vim options ]]

-- Set <space> as the leader key
-- NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.termguicolors = true             -- Enable 24-bit RGB color (with compatible terminal)

vim.opt.signcolumn = "yes:1"             -- Always draw fixed-width signcolumn (for gitsigns, etc.)
vim.opt.number = true                    -- Show line numbers
vim.opt.cursorline = true                -- Highlight current line
vim.opt.scrolloff = 20                   -- Vertical scroll before hitting edges
vim.opt.showmode = false                 -- Hide mode in command-line since it's already shown in lualine

vim.opt.wildmode = "longest:list:full"   -- Mimic bash autocompletion

vim.opt.completeopt = "menuone,noinsert" -- Insert mode completion behavior

vim.opt.clipboard:append("unnamedplus")  -- Use system clipboard

vim.opt.undofile = true                  -- Save undo history

vim.opt.timeoutlen = 300                 -- Timeout for mapped sequences, in milliseconds. Which-key activates after this time
vim.opt.updatetime = 250                 -- Swap file is written after this many milliseconds of nothing typed (and autocommands/hovers activate)

-- Indentation
-- NOTE: may be overwritten by vim-sleuth
local tabsize = 2
vim.opt.expandtab = true     -- Spaces as tabs
vim.opt.tabstop = tabsize    -- Tab is tabsize spaces
vim.opt.shiftwidth = tabsize -- (Auto)indent is tabsize spaces
vim.opt.smartindent = true   -- Smart autoindenting when starting a new line
vim.opt.breakindent = true   -- Wrapped lines continue visually indented

-- Search
vim.opt.hlsearch = true   -- Highlight search results
vim.opt.ignorecase = true -- Case-insensitive search unless \C OR...
vim.opt.smartcase = true  -- ...capital letter in pattern

-- Folds (with treesitter grammar)
vim.opt.foldmethod = "expr"
vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldlevel = 99 -- Open all folds by default

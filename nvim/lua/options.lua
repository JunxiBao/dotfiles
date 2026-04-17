vim.g.mapleader = ' '

-- Display
vim.opt.background = 'dark'
vim.opt.termguicolors = true

-- File encoding
vim.opt.fileencodings = 'utf-8,gbk'
vim.opt.fileformat = 'unix'

-- Indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- UI
vim.opt.number = true
vim.opt.wrap = false
vim.opt.signcolumn = 'auto'
vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.opt.cursorline = true
vim.opt.showtabline = 2
vim.opt.showmode = false

-- Behavior
vim.opt.mouse = 'a'
vim.opt.updatetime = 300

-- Backup/Swap/Undo
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.undodir = vim.fn.expand('~/.cache/nvim/undodir')
vim.opt.undofile = true

-- Folding
vim.opt.foldmethod = 'indent'

-- Format options
vim.opt.formatoptions:append('/ro')

-- Tags and path
vim.opt.tags = 'tags~;,tags~'
vim.opt.path = { '.', 'lib;', 'include;', 'includes;' }
vim.opt.path:append({ '/usr/include', '/usr/include/c++/*', '/usr/local/include' })

-- Column limit
vim.opt.colorcolumn = '120'
vim.cmd('highlight ColorColumn ctermbg=0 guibg=lightgrey')

-- Clipboard
if vim.fn.has('unnamedplus') == 1 then
    vim.opt.clipboard = 'unnamedplus'
else
    vim.opt.clipboard = 'unnamed'
end

-- Trailing whitespace highlight
vim.cmd('highlight ExtraWhitespace ctermbg=red guibg=red')
vim.cmd([[match ExtraWhitespace /\s\+$/]])

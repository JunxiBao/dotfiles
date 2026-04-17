local map = vim.keymap.set

-- Neo-tree toggle
map('n', '<leader>n', ':Neotree toggle<CR>', { silent = true })

-- Tab navigation
map('n', 'J', ':tabprevious<CR>')
map('n', 'K', ':tabnext<CR>')
map('n', '<leader>J', ':tabmove -1<CR>')
map('n', '<leader>K', ':tabmove +1<CR>')

-- Window navigation
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Quote wrapping
map('n', '<leader>"', 'viw<esc>a"<esc>bi"<esc>lel')
map('n', "<leader>'", "viw<esc>a'<esc>bi'<esc>lel")

-- Window resize
map('n', '<leader>+', ':resize +5<CR>', { silent = true })
map('n', '<leader>-', ':resize -5<CR>', { silent = true })
map('n', '<leader>v+', ':vertical resize +5<CR>', { silent = true })
map('n', '<leader>v-', ':vertical resize -5<CR>', { silent = true })

-- Folding
map('n', '<leader>fi', ':set foldmethod=indent<CR>', { silent = true })
map('n', '<leader>fd', ':set foldmethod=manual<CR>ggVGzD', { silent = true })

-- LazyGit
map('n', '<space>lg', ':LazyGit<CR>', { silent = true })


-- Disable <C-a>
map('n', '<C-a>', '<Nop>')
map('x', '<C-a>', '<Nop>')

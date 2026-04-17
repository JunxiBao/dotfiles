local map = vim.keymap.set

-- Completion key mappings
vim.keymap.set('i', '<Tab>', function()
    if vim.fn['coc#pum#visible']() == 1 then
        return vim.fn['coc#pum#next'](1)
    else
        return '<Tab>'
    end
end, { silent = true, noremap = true, expr = true })

vim.keymap.set('i', '<S-Tab>', function()
    if vim.fn['coc#pum#visible']() == 1 then
        return vim.fn['coc#pum#prev'](1)
    else
        return '<S-Tab>'
    end
end, { silent = true, noremap = true, expr = true })

vim.keymap.set('i', '<CR>', function()
    if vim.fn['coc#pum#visible']() == 1 then
        return vim.fn['coc#pum#confirm']()
    else
        return '<CR>'
    end
end, { silent = true, noremap = true, expr = true })

-- Diagnostics navigation
map('n', '<leader>g[', '<Plug>(coc-diagnostic-prev)', { silent = true, remap = true })
map('n', '<leader>g]', '<Plug>(coc-diagnostic-next)', { silent = true, remap = true })

-- GoTo code navigation
map('n', '<leader>gd', '<Plug>(coc-definition)', { silent = true, remap = true })
map('n', '<leader>gr', '<Plug>(coc-references)', { silent = true, remap = true })
map('n', '<leader>gy', '<Plug>(coc-type-definition)', { silent = true, remap = true })
map('n', '<leader>gi', '<Plug>(coc-implementation)', { silent = true, remap = true })

-- Highlight symbol under cursor
vim.api.nvim_create_autocmd('CursorHold', {
    pattern = '*',
    callback = function()
        vim.fn.CocActionAsync('highlight')
    end,
})

-- Symbol renaming
map('n', '<leader>rn', '<Plug>(coc-rename)', { remap = true })

-- Format selected
map('x', '<leader>f', '<Plug>(coc-format-selected)', { remap = true })
map('n', '<leader>f', '<Plug>(coc-format-selected)', { remap = true })

-- Quick fix
map('n', '<leader>qf', '<Plug>(coc-fix-current)', { remap = true })

-- clangd switch source/header
map('n', '<leader>gh', ':CocCommand clangd.switchSourceHeader<CR>')

-- Show documentation
local function show_documentation()
    local ft = vim.bo.filetype
    if ft == 'vim' or ft == 'help' then
        vim.cmd('h ' .. vim.fn.expand('<cword>'))
    elseif vim.fn['coc#rpc#ready']() == 1 then
        vim.fn.CocActionAsync('doHover')
    else
        vim.cmd('!' .. vim.o.keywordprg .. ' ' .. vim.fn.expand('<cword>'))
    end
end
map('n', '<leader>h', show_documentation, { silent = true })

-- Semantic highlight
vim.g.coc_default_semantic_highlight_groups = 1

-- Extensions
vim.g.coc_global_extensions = {
    'coc-marketplace',
    'coc-highlight',
    'coc-clangd',
    'coc-pyright',
    'coc-lua',
    'coc-sh',
    'coc-cmake',
    'coc-xmake',
    'coc-json',
    'coc-yaml',
    'coc-vimlsp',
}

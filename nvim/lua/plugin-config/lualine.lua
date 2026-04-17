require('lualine').setup({
    options = {
        theme = 'onedark',
    },
    tabline = {
        lualine_a = {
            {
                'tabs',
                mode = 2,
                max_length = vim.o.columns,
            },
        },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
    },
})

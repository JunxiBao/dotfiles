require("neo-tree").setup({
    filesystem = {
        follow_current_file = {
            enabled = true,
        },
        use_libuv_file_watcher = true,
    },
    window = {
        mappings = {
            ["l"] = "open",
            ["h"] = "close_node",
        },
    },
})

vim.api.nvim_create_autocmd("VimEnter", {
    callback = function(data)
        local no_name = data.file == "" and vim.bo[data.buf].buftype == ""
        if no_name then
            vim.cmd("Neotree show")
        end
    end,
})

require('options')
require('plugins')

local plugs = vim.g.plugs or {}

if plugs['onedark.nvim'] then require('plugin-config.onedark') end
if plugs['lualine.nvim'] then require('plugin-config.lualine') end
if plugs['fzf.vim'] then require('plugin-config.fzf') end
if plugs['undotree'] then require('plugin-config.undotree') end
if plugs['neo-tree.nvim'] then require('plugin-config.neo-tree') end
if plugs['tagbar'] then require('plugin-config.tagbar') end
if plugs['coc.nvim'] then require('plugin-config.coc') end
if plugs['nvim-treesitter'] then require('plugin-config.nvim-treesitter') end
if plugs['leetcode.nvim'] then require('plugin-config.nvim-leetcode') end
if plugs['gitsigns.nvim'] then require('plugin-config.gitsigns') end
if plugs['indent-blankline.nvim'] then require('plugin-config.indent-blankline') end

if plugs['telescope.nvim'] then require('plugin-config.telescope') end
if plugs['live-preview.nvim'] then require('plugin-config.live-server') end
require('keymaps')

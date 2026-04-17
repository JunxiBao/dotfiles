local plug = vim.fn['plug#']

vim.call('plug#begin')

-- UI
plug('navarasu/onedark.nvim')
plug('nvim-lualine/lualine.nvim')
plug('lukas-reineke/indent-blankline.nvim')
plug('nvim-tree/nvim-web-devicons')
plug('stevearc/dressing.nvim')
plug('folke/snacks.nvim')

-- File explorer
plug('nvim-neo-tree/neo-tree.nvim', { branch = 'v3.x' })

-- Navigation
plug('christoomey/vim-tmux-navigator')
plug('junegunn/fzf', { ['do'] = function() vim.fn['fzf#install']() end })
plug('junegunn/fzf.vim')

-- Tags
plug('ludovicchabant/vim-gutentags')
plug('majutsushi/tagbar')

-- Editing utilities
plug('mbbill/undotree')

-- Markdown
plug('MeanderingProgrammer/render-markdown.nvim')

-- HTML preview
plug('brianhuster/live-preview.nvim')

-- Git
plug('tpope/vim-fugitive')
plug('lewis6991/gitsigns.nvim')
plug('kdheepak/lazygit.nvim')

-- LSP & completion
plug('neoclide/coc.nvim', { branch = 'release' })

-- Syntax highlighting
plug('nvim-treesitter/nvim-treesitter')

-- Leetcode
plug('kawre/leetcode.nvim')
plug('nvim-telescope/telescope.nvim')

-- Dependencies
plug('nvim-lua/plenary.nvim')
plug('MunifTanjim/nui.nvim')

vim.call('plug#end')

# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Purpose

This is a personal Neovim configuration written in Lua.

## Plugin Management

**Plugin manager:** vim-plug (located in `autoload/plug.vim`)

Common vim-plug commands (run inside Neovim):
- `:PlugInstall` - Install new plugins
- `:PlugUpdate` - Update all plugins
- `:PlugClean` - Remove unused plugins
- `:PlugStatus` - Check plugin status

To add a new plugin: add a `Plug` call inside the `plug#begin`/`plug#end` block in `lua/plugins.lua`, then create a corresponding config file in `lua/plugin-config/` if needed.

## Architecture

**Entry point:** `init.lua` loads the configuration in this order:
1. `lua/options.lua` - Vim options and settings
2. `lua/plugins.lua` - Plugin declarations (vim-plug)
3. `lua/plugin-config/*.lua` - Individual plugin configs, each loaded conditionally via `vim.g.plugs` check
4. `lua/keymaps.lua` - Global keymaps (loaded last so plugins are available)

**Plugin config loading pattern** (from `init.lua`):
```lua
if vim.g.plugs['plugin-name'] then
  require('plugin-config.plugin-name')
end
```

This ensures plugin configs only load when the plugin is installed.

## Key Plugins and Their Config Files

| Plugin | Config file |
|--------|-------------|
| CoC (LSP/completion) | `lua/plugin-config/coc.lua` + `coc-settings.json` |
| Neo-tree (file explorer) | `lua/plugin-config/neo-tree.lua` |
| Telescope (fuzzy finder) | `lua/plugin-config/telescope.lua` |
| Treesitter | `lua/plugin-config/nvim-treesitter.lua` |
| Lualine (statusline) | `lua/plugin-config/lualine.lua` |
| One Dark Pro (theme) | `lua/plugin-config/onedarkpro.lua` |
| Gitsigns | `lua/plugin-config/gitsigns.lua` |
| Live Preview (HTML/Markdown) | `lua/plugin-config/live-server.lua` |

## LSP Setup

LSP is handled by **coc.nvim** (not native LSP). CoC extensions are configured in `coc-settings.json`. The clangd binary path is set to `/opt/homebrew/opt/llvm/bin/clangd` (macOS Homebrew).

Active CoC extensions: `coc-clangd`, `coc-pyright`, `coc-lua`, `coc-sh`, `coc-cmake`, `coc-xmake`, `coc-json`, `coc-yaml`, `coc-vimlsp`.

## Notable Settings

- **Leader key:** `空格` (set in `lua/options.lua:1`)
- **Indentation:** 4 spaces
- **Column limit:** 120 characters (highlighted via `colorcolumn`)
- **Undo persistence:** `~/.cache/nvim/undodir`
- **No swap/backup files**
- **Clipboard:** system clipboard (`unnamed+`)
- **Treesitter disabled** on files >100KB

## Key Bindings Reference

See `lua/keymaps.lua` for global mappings and each `lua/plugin-config/*.lua` for plugin-specific mappings. The most used (leader = 空格):

- `<leader>ff/fg/fb/fr/fs` - Telescope file/grep/buffer/recent/string search
- `<leader>gd/gr/gy/gi` - CoC go-to definition/references/type/implementation
- `<leader>rn` - CoC rename
- `<leader>h` - CoC hover documentation
- `<leader>n` - Toggle Neo-tree
- `<leader>u` - Toggle Undotree
- `<leader>ls/lx` - Live Preview start/stop (HTML/Markdown)
- `<space>lg` - Open LazyGit
- `<C-p>` - fzf git files
- `J/K` (normal mode) - Previous/next tab

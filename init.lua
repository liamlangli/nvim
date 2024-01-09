require("plugins")

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.syntax = 1

-- edit config
vim.o.tabstop = 4        -- Set the width of a tab to 4 spaces
vim.o.shiftwidth = 4     -- Number of spaces to use for each step of (auto)indent
vim.o.expandtab = true   -- Converts tabs to spaces
vim.o.mouse = 'a'
vim.cmd [[syntax on]]

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()
require("lspconfig").clangd.setup{}

require('vscode').load('dark')

require('telescope').setup{
  defaults = {
    -- ...
  },
  pickers = {
    find_files = {
      theme = "dropdown",
    }
  },
  extensions = {
    -- ...
  }
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

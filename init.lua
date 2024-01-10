require("plugins")

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.syntax = 1

-- empty setup using defaults
require("nvim-tree").setup{}
require("lspconfig").clangd.setup{}
require("vscode").load('dark')
require("telescope").setup{}

-- format on save
local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
augroup("__formatter__", { clear = true })
autocmd("BufWritePost", {
	group = "__formatter__",
	command = ":FormatWrite",
})

-- keymaps
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- edit config
vim.o.tabstop = 4        -- Set the width of a tab to 4 spaces
vim.o.shiftwidth = 4     -- Number of spaces to use for each step of (auto)indent
vim.o.expandtab = true   -- Converts tabs to spaces
vim.o.mouse = 'a'
vim.cmd [[syntax on]]

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
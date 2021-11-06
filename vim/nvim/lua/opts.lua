vim.o.errorbells = false
vim.o.hidden = true
vim.o.smartindent = true
vim.o.hlsearch = true
vim.o.smartcase = true
vim.o.smartindent = true
vim.o.swapfile = false
vim.o.completeopt = 'menuone,noinsert,noselect'
vim.o.wrap = false
vim.o.cmdheight = 2
vim.o.updatetime = 50
vim.o.guicursor = ''

vim.o.background = 'dark'
vim.o.termguicolors = true
vim.o.colorcolumn = '80'

vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.signcolumn = 'number'
vim.wo.wrap = false

vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.o.softtabstop = 2
vim.bo.softtabstop = 2
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.expandtab = true
vim.bo.expandtab = true

vim.g.mapleader = ' '
vim.b.mapleader = ' '

vim.g.gruvbox_contrast_dark = 'hard'
vim.g.airline_theme = 'base16_gruvbox_dark_hard'

vim.api.nvim_command('autocmd TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.svelte,*.yaml,*.html PrettierAsync')
vim.api.nvim_command('autocmd FileType go setlocal omnifunc=v:lua.vim.lsp.omnifunc')

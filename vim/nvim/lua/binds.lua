local opts = {noremap = true, silent = true}

-- Telescope
vim.api.nvim_set_keymap('n', '<c-p>', "<cmd>lua require('telescope.builtin').find_files()<cr>", opts)

-- Window movement
vim.api.nvim_set_keymap('n', '<leader>h', ':wincmd h', opts)
vim.api.nvim_set_keymap('n', '<leader>j', ':wincmd j', opts)
vim.api.nvim_set_keymap('n', '<leader>k', ':wincmd k', opts)
vim.api.nvim_set_keymap('n', '<leader>l', ':wincmd l', opts)

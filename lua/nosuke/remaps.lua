-- Smart way to move between windows
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true })

-- Telescope
vim.api.nvim_set_keymap('n', '<leader>p', ':Telescope projects<Cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>o', ':Telescope find_files hidden=true<Cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>f', ':Telescope grep_string<Cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>F', ':Telescope live_grep<Cr>', { noremap = true })

-- Git
vim.api.nvim_set_keymap('n', '<leader>g', ':Git<Cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>d', ':Gdiffsplit<Cr>', { noremap = true })

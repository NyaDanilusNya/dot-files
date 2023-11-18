-- open up neo tree filesystem
vim.keymap.set('n', '<C-t>', ':Neotree filesystem reveal right toggle float<CR>', {silent = true})
-- new tab
vim.keymap.set('n', 'te', ':tabedit<CR>', {silent = true})
-- splits
vim.keymap.set('n', 'sv', ':vsplit<CR><C-w>w', {silent = true})
vim.keymap.set('n', 'ss', ':split<CR><C-w>w', {silent = true})
-- close current tab
vim.keymap.set('n', 'tc', ':tabclose<CR>', {silent = true})
-- git status and managment
vim.keymap.set('n', 'tg', ':Neotree git_status<CR>', {silent = true})
-- list buffers
vim.keymap.set('n', 'gn', ':nohl<CR>', {silent = true})
-- inc or dec number
vim.keymap.set('n', '=', '<C-a>')
vim.keymap.set('n', '-', '<C-x>')
-- tab navigation
vim.keymap.set('n', 't<left>', ':tabprev<CR>', {silent = true})
vim.keymap.set('n', 't<right>', ':tabnext<CR>', {silent = true})
vim.keymap.set('n', 'th', ':tabprev<CR>', {silent = true})
vim.keymap.set('n', 'tl', ':tabnext<CR>', {silent = true})
-- append char
vim.keymap.set('n', '<C-a>', 'a <ESC>r', {silent = true})
-- tab for tab
vim.keymap.set('v', '<tab>', '>')
vim.keymap.set('v', '<s-tab>', '<')
vim.keymap.set('n', '<tab>', ':><CR>')
vim.keymap.set('n', '<s-tab>', ':<<CR>')
-- repeat last command
vim.keymap.set('n', '!!', '@:', {silent = true})
-- append new line
vim.keymap.set('n', '<C-j>', 'o<ESC>')
-- stupid build system based on make
vim.keymap.set('n', '<F5>', ':!make build<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<F6>', ':!make debug<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<F7>', ':!make run<CR>', { noremap = true, silent = true })
-- telescope mapping
vim.keymap.set('n', 'ff', ':Telescope find_files<CR>', { noremap = true, silent = true })
vim.keymap.set('n', 'fd', ':Telescope treesitter<CR>', { noremap = true, silent = true })
vim.keymap.set('n', 'tb', ':Telescope buffers<CR>', {silent = true})


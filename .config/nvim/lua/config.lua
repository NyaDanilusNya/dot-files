-- Config

vim.wo.number = true
vim.wo.cursorline = true
vim.wo.cursorcolumn = false
vim.wo.wrap = true
vim.o.mouse = 'a'
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.expandtab = true
vim.o.shiftround = true
vim.o.autoindent = true
vim.o.scrolloff = 10
vim.o.backspace='indent,eol,start'
vim.o.laststatus=2
vim.o.showmode = true
vim.o.showcmd = true
vim.o.foldmethod = 'indent'
--vim.o.matchpairs:append('<:>')
vim.o.list = true
vim.o.listchars='tab:›\\ ,trail:•,extends:#,nbsp:.'
vim.o.encoding = 'utf-8'
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.viminfo = "'100,<9999,s100"
vim.o.swapfile = true
vim.o.syntax = true
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
--[[
local colorscheme = "wal"
local ok,_ = pcall(vim.cmd, "colorscheme " .. colorscheme)
vim.o.background = "dark" -- or "light" for light mode
if not ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end
]]


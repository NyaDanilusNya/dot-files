require'nvim-treesitter.configs'.setup
{
  ensure_installed = { "cpp", "c", "lua" },

  sync_install = true,

  auto_install = false,

  highlight =
  {
    enable = true,
    disable = {  },
    additional_vim_regex_highlighting = true,
  },
  rainbow =
  {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  },
  playground =
  {
    enable = true,
  }
}

-- Colors --
vim.api.nvim_set_hl(0, "@function", { ctermfg = "Red" })
vim.api.nvim_set_hl(0, "@function.call", { ctermfg = "Red" })
vim.api.nvim_set_hl(0, "@variable", { cterm = {bold=true}, ctermfg = "DarkBlue" })
vim.api.nvim_set_hl(0, "@type", { cterm = {underline=true}, ctermfg = "DarkGreen" })
vim.api.nvim_set_hl(0, "@comment", { cterm = {italic=true}, ctermfg = "Grey" })

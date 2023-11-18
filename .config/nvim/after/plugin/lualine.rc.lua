require('lualine').setup
{
  options =
  {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    disabled_filetypes = { 'packer', 'neo-tree' }
  },

  sections =
  {
    lualine_a = {'mode'},

    lualine_b = {'branch', {'diff', symbols = { added = ' ', modified = '󰝤 ', removed = ' ' }}},

    lualine_c = {{'filename', file_status = true, path = 3}
    },
    lualine_x = {{'diagnostics', sources = {'coc'}}},
    lualine_y = {'filetype'},
    lualine_z = {'location'}
  },

  inactive_sections =
  {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {{
      'filename',
      file_status = { true },
      path = { 1 }
    }},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },

  tabline = {},
  extensions = { 'fugitive' }
}

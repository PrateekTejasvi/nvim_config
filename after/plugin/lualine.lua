-- Bubbles config for lualine
-- Author: lokesh-krishna
-- MIT license, see LICENSE for more details.

-- stylua: ignore
local colors = {
  blue   = '#80a0ff',
  cyan   = '#79dac8',
  black  = '#080808',
  white  = '#c6c6c6',
  red    = '#ff5189',
  violet = '#d183e8',
  grey   = '#303030',
}

local bubbles_theme = {
  normal = {
    a = { fg = colors.black, bg = colors.violet },
    b = { fg = colors.white, bg = colors.grey },
    c = { fg = colors.white },
  },

  insert = { a = { fg = colors.black, bg = colors.blue } },
  visual = { a = { fg = colors.black, bg = colors.cyan } },
  replace = { a = { fg = colors.black, bg = colors.red } },

  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.white },
  },
}

require('lualine').setup {
  options = {
    theme = bubbles_theme,
    component_separators = '',
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
    lualine_b = { 'filename', 'branch' },
    lualine_c = {},
    lualine_x = {
    {'diagnostics',
    sources = {'nvim_diagnostic'},
    symbols = { error = ' ', warn = ' ', info = ' ' },
    diagnostics_color = {
    error = { fg = colors.red },
    warn = { fg = colors.yellow },
    info = { fg = colors.cyan },
  },
    }
    },
    lualine_y = { 'filetype', 'progress' },
    lualine_z = {
      { 'location', separator = { right = '' }, left_padding = 3 },
    },
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {'branch'},
    lualine_c = {},
    lualine_x = { },
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {},
  extensions = {},

}

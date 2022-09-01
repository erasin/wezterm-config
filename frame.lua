local colors = require "colors"

local M = {}

M = {
  inactive_titlebar_bg = colors.gray,
  active_titlebar_bg = colors.black,

  inactive_titlebar_fg = colors.gray,
  active_titlebar_fg = colors.black,

  inactive_titlebar_border_bottom = colors.purple,
  active_titlebar_border_bottom = colors.purple,

  button_fg = colors.gray,
  button_bg = colors.linenr,

  button_hover_fg = colors.white,
  button_hover_bg = colors.purple,
}


return M

local colors = require("colors");

-- colors.tab_bar
local M = {
  background = colors.black,

  -- 活动 tab 设置
  active_tab = {
    bg_color = colors.white,
    fg_color = colors.black,

    -- "Half", "Normal" or "Bold"
    intensity = "Normal",

    -- "None", "Single" or "Double" underline for
    underline = "None",

    -- Specify whether you want the text to be italic (true) or not (false)
    italic = false,

    -- Specify whether you want the text to be rendered with strikethrough (true)
    strikethrough = false,
  },

  -- 非活动 tab
  inactive_tab = {
    bg_color = colors.black,
    fg_color = colors.white,
  },

  inactive_tab_hover = {
    bg_color = colors.light_gray,
    fg_color = colors.white,
    italic = true,
  },

  new_tab = {
    bg_color = colors.black,
    fg_color = colors.light_blue,
  },

  new_tab_hover = {
    bg_color = colors.white,
    fg_color = colors.black,
    italic = true,
  }
}

return M

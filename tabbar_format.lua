local wezterm = require 'wezterm'
local colors = require 'colors'

local RIGHT_ARROW = utf8.char(0xe0b1)
local SOLID_RIGHT_ARROW = utf8.char(0xe0b0)
local ICON = string.format(" %s ", utf8.char(0x23fb))

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
  local edge_background = colors.black
  local background = colors.linenr
  local foreground = "#c0c0c0"

  if tab.is_active then
    background = colors.light_blue
    foreground = colors.white1
  elseif hover then
    background = colors.blue1
    foreground = colors.white2
  end

  local edge_foreground = background
  
  -- TODO: 重构
  -- cells table 追加单元,计算长度

  -- ensure that the titles fit in the available space,
  -- and that we have room for the edges.
  -- local title = wezterm.truncate_right(tab.active_pane.title, max_width - 2)
  -- 前后字符 + 前后空格 + 数字 + . = 6
  -- local sub = 6;

  -- -- 序号 9 之后 进 1 位 = 1
  -- if tab.tab_index > 8 then
  --   sub = 7
  -- end

  -- -- 追加了展示字符和空格 = 4
  -- if tab.tab_index == 0 then
  --   sub = 10
  -- end
  
  -- local title = string.format(" %d.%s ", tab.tab_index + 1, string.sub(tab.active_pane.title, 1, end))
  local title = string.format(" %d.%s ", tab.tab_index + 1, tab.active_pane.title )

  local elements = {};

  -- 左侧
  if tab.tab_index > 0 then
    -- if tab.is_active then
    -- end

    table.insert(elements, { Background = { Color = edge_foreground } })
    table.insert(elements, { Foreground = { Color = edge_background } })
    table.insert(elements, { Text = SOLID_RIGHT_ARROW })

  else
    table.insert(elements, { Background = { Color = colors.blue } })
    table.insert(elements, { Foreground = { Color = colors.white1 } })
    table.insert(elements, { Text = ICON })

    table.insert(elements, { Background = { Color = edge_foreground } })
    table.insert(elements, { Foreground = { Color = colors.blue } })
    table.insert(elements, { Text = SOLID_RIGHT_ARROW })
  end

  -- 文本实体
  table.insert(elements, { Background = { Color = background } })
  table.insert(elements, { Foreground = { Color = foreground } })
  table.insert(elements, { Text = title })

  -- 右侧
  table.insert(elements, { Background = { Color = edge_background } })
  table.insert(elements, { Foreground = { Color = edge_foreground } })
  table.insert(elements, { Text = SOLID_RIGHT_ARROW })

  return elements
end);

return {}

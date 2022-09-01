local wezterm = require "wezterm"
local utils   = require "utils"

require "tabbar_format"
require "tabbar_right"
-- require "event_resize"

-- 快捷键
local keys_event = {
  { key = "`", mods = "CTRL", action = wezterm.action { EmitEvent = "toggle-tmux" } },
}

-- only for wez
local key_toggle_tabbar = { key = "M", mods = "CMD", action = wezterm.action { EmitEvent = "toggle-tabbar" }}

-- 切换按键布局 wez / tmux
wezterm.on("toggle-tmux", function(window, _pane)
  local overrides = window:get_config_overrides() or {}

  local keys = {};
  if overrides.enable_tab_bar == false then
    keys = require "keys_def"
    overrides.enable_tab_bar = true
    table.insert(keys, key_toggle_tabbar)
  else
    keys = require "keys_tmux"
    overrides.enable_tab_bar = false
  end

  overrides.keys = utils.TableConcat(keys, keys_event)
  window:set_config_overrides(overrides)
end)

-- 切换tabbar的显示隐藏状态
wezterm.on("toggle-tabbar", function(window, _pane)
  local overrides = window:get_config_overrides() or {}

  if overrides.enable_tab_bar == false then
    overrides.enable_tab_bar = true
  else
    overrides.enable_tab_bar = false
  end

  window:set_config_overrides(overrides)
end)

return keys_event

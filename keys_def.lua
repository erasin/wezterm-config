local wezterm = require "wezterm";

-- SUPER WIN CMD 等效
-- ALT OPT 等效

local M = {
  -- SendString 映射
  -- { key = "a", mods = "CTRL",  action=wezterm.action{SendString="\x01"}},

  -- pane 管理
  -- 新窗口
  { key = "t", mods = "ALT", action = wezterm.action { SpawnTab = "DefaultDomain" } },
  { key = "t", mods = "CMD", action = wezterm.action { SpawnTab = "DefaultDomain" } },

  -- 显示tab标签
  { key = "m", mods = "ALT", action = wezterm.action.ShowTabNavigator },
  { key = "m", mods = "CMD", action = wezterm.action.ShowTabNavigator },
  { key = "M", mods = "CMD", action = wezterm.action { EmitEvent = "toggle-tabbar" }},

  -- 关闭 pane
  { key = "w", mods = "CMD", action = wezterm.action { CloseCurrentPane = { confirm = true } } },
  -- 关闭 tab
  { key = "x", mods = "CMD", action = wezterm.action { CloseCurrentTab = { confirm = true } } },
  { key = "q", mods = "CMD", action = wezterm.action.QuitApplication },

  -- 切换全屏
  { key = "f", mods = "CTRL|CMD", action = wezterm.action.ToggleFullScreen },
  { key = "h", mods = "CMD", action = wezterm.action.HideApplication },
  { key = "r", mods = "CMD", action = wezterm.action.ReloadConfiguration },

  -- { key = "=", mods = "CMD", action = "IncreaseFontSize" },
  { key = "=", mods = "CMD", action = wezterm.action.IncreaseFontSize },
  { key = "-", mods = "CMD", action = wezterm.action.DecreaseFontSize },
  { key = "0", mods = "CMD", action = wezterm.action.ResetFontSize },

  { key = "v", mods = "CMD", action = wezterm.action.Paste },
  { key = "c", mods = "CMD", action = wezterm.action.Copy },
  { key = "n", mods = "CMD", action = wezterm.action.SpawnWindow },

  -- 新建 pane
  { key = "d", mods = "CMD", action = wezterm.action { SplitHorizontal = { domain = "CurrentPaneDomain" } } },
  { key = "D", mods = "CMD", action = wezterm.action { SplitVertical = { domain = "CurrentPaneDomain" } } },

  -- 切换 tab activeate
  { key = "j", mods = "CMD", action = wezterm.action { ActivateTabRelative = -1 } },
  { key = "k", mods = "CMD", action = wezterm.action { ActivateTabRelative = 1 } },

  -- 移动 tab
  { key = "J", mods = "CMD", action = wezterm.action { MoveTabRelative = -1 } },
  { key = "K", mods = "CMD", action = wezterm.action { MoveTabRelative = 1 } },

  -- 切换 pane switch pane
  { key = "h", mods = "ALT", action = wezterm.action { ActivatePaneDirection = "Left" } },
  { key = "j", mods = "ALT", action = wezterm.action { ActivatePaneDirection = "Down" } },
  { key = "k", mods = "ALT", action = wezterm.action { ActivatePaneDirection = "Up" } },
  { key = "l", mods = "ALT", action = wezterm.action { ActivatePaneDirection = "Right" } },

  -- 调整尺寸 resize pane
  { key = "H", mods = "ALT", action = wezterm.action { AdjustPaneSize = { "Left", 5 } } },
  { key = "J", mods = "ALT", action = wezterm.action { AdjustPaneSize = { "Down", 5 } } },
  { key = "K", mods = "ALT", action = wezterm.action { AdjustPaneSize = { "Up", 5 } } },
  { key = "L", mods = "ALT", action = wezterm.action { AdjustPaneSize = { "Right", 5 } } },

  { key = "1", mods = "CMD", action = wezterm.action { ActivateTab = 0 } },
  { key = "2", mods = "CMD", action = wezterm.action { ActivateTab = 1 } },
  { key = "3", mods = "CMD", action = wezterm.action { ActivateTab = 2 } },
  { key = "4", mods = "CMD", action = wezterm.action { ActivateTab = 3 } },
  { key = "5", mods = "CMD", action = wezterm.action { ActivateTab = 4 } },
  { key = "6", mods = "CMD", action = wezterm.action { ActivateTab = 5 } },
  { key = "7", mods = "CMD", action = wezterm.action { ActivateTab = 6 } },
  { key = "8", mods = "CMD", action = wezterm.action { ActivateTab = 7 } },
  { key = "9", mods = "CMD", action = wezterm.action { ActivateTab = -1 } },
}

return M

local wezterm = require "wezterm"

local linux_keys = {

  { key = "=", mods = "CTRL",   action = wezterm.action.IncreaseFontSize },
  { key = "-", mods = "CTRL",   action = wezterm.action.DecreaseFontSize },
  { key = "0", mods = "CTRL",   action = wezterm.action.ResetFontSize },

  -- pane
  { key = "t", mods = "ALT",    action = wezterm.action.SpawnTab "DefaultDomain" },
  { key = "m", mods = "ALT",    action = wezterm.action.ShowTabNavigator },
  { key = "w", mods = "ALT",    action = wezterm.action.CloseCurrentPane { confirm = true } },
  { key = "n", mods = "SUPER",  action = wezterm.action.SpawnWindow },
  { key = "e", mods = "LEADER", action = wezterm.action.EmitEvent "toggle-tabbar" },

  -- 分割
  { key = "d", mods = "ALT",    action = wezterm.action.SplitHorizontal { domain = "CurrentPaneDomain" } },
  { key = "D", mods = "ALT",    action = wezterm.action.SplitVertical { domain = "CurrentPaneDomain" } },

  -- 切换
  { key = "h", mods = "ALT",    action = wezterm.action.ActivatePaneDirection "Left" },
  { key = "j", mods = "ALT",    action = wezterm.action.ActivatePaneDirection "Down" },
  { key = "k", mods = "ALT",    action = wezterm.action.ActivatePaneDirection "Up" },
  { key = "l", mods = "ALT",    action = wezterm.action.ActivatePaneDirection "Right" },

  -- 调整尺寸 resize pane
  { key = "H", mods = "ALT",    action = wezterm.action.AdjustPaneSize { "Left", 5 } },
  { key = "J", mods = "ALT",    action = wezterm.action.AdjustPaneSize { "Down", 5 } },
  { key = "K", mods = "ALT",    action = wezterm.action.AdjustPaneSize { "Up", 5 } },
  { key = "L", mods = "ALT",    action = wezterm.action.AdjustPaneSize { "Right", 5 } },

  -- 窗口
  { key = "1", mods = "ALT",    action = wezterm.action.ActivateTab(0) },
  { key = "2", mods = "ALT",    action = wezterm.action.ActivateTab(1) },
  { key = "3", mods = "ALT",    action = wezterm.action.ActivateTab(2) },
  { key = "4", mods = "ALT",    action = wezterm.action.ActivateTab(3) },
  { key = "5", mods = "ALT",    action = wezterm.action.ActivateTab(4) },
  { key = "6", mods = "ALT",    action = wezterm.action.ActivateTab(5) },
  { key = "7", mods = "ALT",    action = wezterm.action.ActivateTab(6) },
  { key = "8", mods = "ALT",    action = wezterm.action.ActivateTab(7) },
  { key = "9", mods = "ALT",    action = wezterm.action.ActivateTab(-1) },
}

local M = {}

function M.set(config)
  if (config.enable_tab_bar) then
    config.leader = { key = 'a', mods = 'CTRL', timeout_milliseconds = 1000 }
    config.keys = linux_keys
  else
    config.default_prog = { '/bin/zsh', '-l', '-c', 'tmux attach || tmux' }
    config.keys = require "keys_tmux"
  end
end

return M

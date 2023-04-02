local wezterm = require "wezterm"

local M = {

  -- https://wezfurlong.org/wezterm/config/lua/config/prefer_egl.html
  -- prefer_egl = false,

  -- 默认使用 tmux ，确保下面的 enable_tab_bar = false
  default_prog = { '/bin/zsh', '-l', '-c', 'tmux attach || tmux' },

  -- 主题
  color_scheme_dirs = { HOME .. "/.config/wezterm/themes" },
  -- color_scheme = theme,

  -- https://github.com/ryanoasis/nerd-fonts/releases/tag/v2.2.2
  font = wezterm.font_with_fallback({
    {
      family = "CaskaydiaCove Nerd Font",
      weight = "Regular",
      -- harfbuzz_features = { "calt=0", "clig=0", "liga=0" }
    },
    {
      family = "HarmonyOS Sans SC",
      weight = "Regular",
    }
  }),
  font_size = 14.,
  line_height = 1.45,
  -- dpi = 192.,
  adjust_window_size_when_changing_font_size = false,

  -- NONE, TITLE , RESIZE
  -- 隐藏标题栏,保留部分功能
  window_decorations = "RESIZE",
  window_padding = { left = 2, right = 2, top = 0, bottom = 0, }, -- padding
  -- use_resize_increments = true, -- 按照字符来改变窗口尺寸
  -- native_macos_fullscreen_mode = true, -- mac 的默认全屏处理

  -- window 初始化行列数
  initial_rows = 42,
  initial_cols = 200,

  check_for_updates = false,
  animation_fps = 10, -- fps 禁用滚动效果
  -- default_cursor_style = "BlinkingBar",
  cursor_blink_rate = 1000,

  enable_scroll_bar = false,
  -- 自动加载配置
  -- automatically_reload_config = false,

  -- tabbar
  enable_tab_bar = false, -- 开启关闭标签栏 for tmux
  -- use_fancy_tab_bar = false, -- 不使用原生tab
  -- tab_bar_at_bottom = true, -- 底部
  -- hide_tab_bar_if_only_one_tab = true, -- 单一标签关闭显示
  tab_max_width = 30, -- 宽度认定

  -- pane_focus_follows_mouse = true,
  -- window_frame = window_frame,
  -- 退出 Colse, Hold, CloseOnCleanExit
  -- exit_behavior = "Hold",

  -- 使用 ^1b , 参照 iterm2 设定 esc+ 防止 osx dead keys
  send_composed_key_when_right_alt_is_pressed = false,

  -- 设定未激活的pane的显示
  inactive_pane_hsb = {
    saturation = 0.9, -- 饱和度
    brightness = 0.95, -- 亮度
  },

  -- window_background_opacity = 0.5, -- 窗口透明度
  -- text_background_opacity = 0.5, -- 文本透明度

  -- 默认绑定
  disable_default_key_bindings = true,
  colors = {
    -- tab_bar = tab_bar,
  },

  -- ssh_domains = require "ssh",
}

return M

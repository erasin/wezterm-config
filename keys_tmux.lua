local wezterm = require 'wezterm'

local M = {

  -- wezterm
  { key = 'x',   mods = 'CMD',       action = wezterm.action.CloseCurrentTab { confirm = true } },
  { key = 'q',   mods = 'CMD',       action = wezterm.action.QuitApplication },
  { key = 'f',   mods = 'CTRL|CMD',  action = wezterm.action.ToggleFullScreen },
  { key = 'h',   mods = 'CMD',       action = wezterm.action.HideApplication },
  { key = 'r',   mods = 'CMD',       action = wezterm.action.ReloadConfiguration },
  { key = '=',   mods = 'CMD',       action = wezterm.action.IncreaseFontSize },
  { key = '-',   mods = 'CMD',       action = wezterm.action.DecreaseFontSize },
  { key = '0',   mods = 'CMD',       action = wezterm.action.ResetFontSize },

  { key = 'v',   mods = 'CMD',       action = wezterm.action.PasteFrom 'Clipboard'},
  { key = 'c',   mods = 'CMD',       action = wezterm.action.CopyTo 'ClipboardAndPrimarySelection'},
  { key = 'n',   mods = 'CMD',       action = wezterm.action.SpawnWindow },

  -- tmux
  -- xxd -psd
  -- 01 ^a
  -- 02 ^b
  -- 1b esc

  { key = '[',   mods = 'CMD',       action = wezterm.action.SendString '\x01\x5b' }, -- # ^b [ for scroll mode, use q exit -- LBracket
  { key = 't',   mods = 'CMD',       action = wezterm.action.SendString '\x01c' },    -- # ^b c 新建 tab
  { key = 'w',   mods = 'CMD',       action = wezterm.action.SendString '\x01x' },    -- kill pane

  { key = 'm',   mods = 'CMD',       action = wezterm.action.SendString '\x01w' },    -- # ^b s session list
  { key = 'M',   mods = 'CMD',       action = wezterm.action.SendString '\x01m' },    -- # ^b t max

  -- 新建小窗口
  { key = 'd',   mods = 'CMD',       action = wezterm.action.SendString '\x01\x7c' }, -- # ^b | vSplit window
  { key = 'D',   mods = 'CMD|SHIFT', action = wezterm.action.SendString '\x01\x2d' }, -- # ^b - hSplit window

  -- 移动
  -- ^b shift right
  -- ^b shift left

  -- 切换标签
  { key = 'j',   mods = 'CMD',       action = wezterm.action.SendString '\x01\x08' }, -- # ^b ^h 切换 tab prev
  { key = 'k',   mods = 'CMD',       action = wezterm.action.SendString '\x01\x0c' }, -- # ^b ^l 切换 tab next
  { key = 'Tab', mods = 'ALT',       action = wezterm.action.SendString '\x01\x09' }, -- # ^b tab

  -- 切换小框口
  { key = 'h',   mods = 'ALT',       action = wezterm.action.SendString '\x01h\x1b' }, -- # ^b h  -- # 切换pane
  { key = 'j',   mods = 'ALT',       action = wezterm.action.SendString '\x01j\x1b' }, -- # ^b j
  { key = 'k',   mods = 'ALT',       action = wezterm.action.SendString '\x01k\x1b' }, -- # ^b k
  { key = 'l',   mods = 'ALT',       action = wezterm.action.SendString '\x01l\x1b' }, -- # ^b l

  -- 调整小窗口尺寸
  { key = 'H',   mods = 'ALT|SHIFT', action = wezterm.action.SendString '\x01H' }, -- # ^b H  -- # resize
  { key = 'J',   mods = 'ALT|SHIFT', action = wezterm.action.SendString '\x01J' }, -- # ^b J
  { key = 'K',   mods = 'ALT|SHIFT', action = wezterm.action.SendString '\x01K' }, -- # ^b K
  { key = 'L',   mods = 'ALT|SHIFT', action = wezterm.action.SendString '\x01L' }, -- # ^b L

  -- 标签页
  { key = '1',   mods = 'CMD',       action = wezterm.action.SendString '\x011' }, -- # ^b 1 切换 tab1
  { key = '2',   mods = 'CMD',       action = wezterm.action.SendString '\x012' }, -- # ^b 2
  { key = '3',   mods = 'CMD',       action = wezterm.action.SendString '\x013' }, -- # ^b 3
  { key = '4',   mods = 'CMD',       action = wezterm.action.SendString '\x014' }, -- # ^b 4
  { key = '5',   mods = 'CMD',       action = wezterm.action.SendString '\x015' }, -- # ^b 5
  { key = '6',   mods = 'CMD',       action = wezterm.action.SendString '\x016' }, -- # ^b 6
  { key = '7',   mods = 'CMD',       action = wezterm.action.SendString '\x017' }, -- # ^b 7
  { key = '8',   mods = 'CMD',       action = wezterm.action.SendString '\x018' }, -- # ^b 8
  { key = '9',   mods = 'CMD',       action = wezterm.action.SendString '\x019' }, -- # ^b tab
}

return M

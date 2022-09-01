local wezterm = require "wezterm"

-- 类似禅模式,内部窗口居中
local function recompute_padding(window)
  local window_dims = window:get_dimensions();
  local overrides = window:get_config_overrides() or {}

  if not window_dims.is_full_screen then
    if not overrides.window_padding then
      -- not changing anything
      return;
    end
    overrides.window_padding = nil;
  else
    -- Use only the middle 33%
    local third = math.floor(window_dims.pixel_width / 3)
    local new_padding = {
      left = third,
      right = third,
      top = 0,
      bottom = 0
    };
    if overrides.window_padding and new_padding.left == overrides.window_padding.left then
      -- padding is same, avoid triggering further changes
      return
    end
    overrides.window_padding = new_padding

  end
  window:set_config_overrides(overrides)
end

-- wezterm.on("window-resized", function(window, pane)
--   -- recompute_padding(window)

--   local overrides = window:get_config_overrides() or {}
--   overrides.window_padding = { left = 0, right = 0, top = 0, bottom = 30, }
--   window:set_config_overrides(overrides)
-- end);

-- wezterm.on("window-config-reloaded", function(window)
--   -- recompute_padding(window)

--   local overrides = window:get_config_overrides() or {}
--   overrides.window_padding = { left = 0, right = 0, top = 0, bottom = 0, }
--   window:set_config_overrides(overrides)
-- end);

wezterm.on("window-resized", function(window, pane)
  local overrides = window:get_config_overrides() or {}
  overrides.window_padding = { left = 0, right = 0, top = 0, bottom = 0, }
  window:set_config_overrides(overrides)
end)

return {}

local keys = {}

if not ENABLE_TAB_BAR then
  keys = require "keys_tmux"
else
  keys = require "keys_def"
end

return keys

HOME = os.getenv("HOME")

-- 配置
local conf = require "config"

conf.color_scheme = require "theme"
conf.window_frame = require "frame"
-- conf.colors.tab_bar = require "tabbar"
conf.ssh_domains = require "ssh"

-- keys
local utils = require "utils"

ENABLE_TAB_BAR = conf.enable_tab_bar
local keys_event = require "event"
local keys = require "keys"
keys = utils.TableConcat(keys, keys_event)

conf.keys = keys

return conf

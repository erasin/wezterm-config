local M = "oneDark"

-- 切换 theme
local term_theme = os.getenv("TERM_THEME")
if term_theme == "light" then
  M = "oneLight"
elseif term_theme == "dark" then
  M = "oneDark"
end

-- M = 'Ocean'

return M

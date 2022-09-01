local M = {}

M.TableConcat = function(t1, t2)
  for i = 1, #t2 do
    -- or use table.insert(t1, t2[i])
    t1[#t1 + 1] = t2[i]
  end
  return t1
end

return M

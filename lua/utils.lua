local M = {}

local api = vim.api

M.map = setmetatable({}, {
  __index = function(_, mode)
    return setmetatable({}, {
      __newindex = function(_, lhs, tbl)
        if tbl == nil then api.nvim_del_keymap(mode, lhs); return end
        local rhs = table.remove(tbl, 1)
        local opts = {}
        for _, v in ipairs(tbl) do
          opts[v] = true
        end
        api.nvim_set_keymap(mode, lhs, rhs, opts)
      end
    })
  end
})

return M

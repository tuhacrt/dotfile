---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["H"] = { "^", "move to start of line", opts = { nowait = true } },
    ["L"] = { "$", "move to end of line", opts = { nowait = true } },
  },
  v = {
    ["H"] = { "^", "move to start of line", opts = { nowait = true } },
    ["L"] = { "$", "move to end of line", opts = { nowait = true } },
  },
}

-- more keybinds!

return M

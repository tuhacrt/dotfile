---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["H"] = { "^", "move to start of line", opts = { nowait = true } },
    ["L"] = { "$", "move to end of line", opts = { nowait = true } },
    ["J"] = { "5j", "move down 5 lines", opts = { nowait = true }},
    ["K"] = { "5k", "move up 5 lines", opts = { nowait = true }},
  },
  v = {
    ["H"] = { "^", "move to start of line", opts = { nowait = true } },
    ["L"] = { "$", "move to end of line", opts = { nowait = true } },
    ["J"] = { "5j", "move down 5 lines", opts = { nowait = true }},
    ["K"] = { "5k", "move up 5 lines", opts = { nowait = true }},
  },
}

-- more keybinds!

return M

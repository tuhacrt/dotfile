require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map({ "n", "v" }, "H", "^", { desc = "move to start of line" })
map({ "n", "v" }, "L", "$", { desc = "move to end of line" })
map({ "n", "v" }, "J", "5j", { desc = "move down 5 lines" })
map({ "n", "v" }, "K", "5k", { desc = "move up 5 lines" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

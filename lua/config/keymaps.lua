-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", "zh", "<cmd>vertical resize -5<cr>", { desc = "← Decrease width" })
map("n", "zl", "<cmd>vertical resize +5<cr>", { desc = "→ Increase width" })
map("n", "zj", "<cmd>resize -3<cr>", { desc = "↓ Decrease height" })
map("n", "zk", "<cmd>resize +3<cr>", { desc = "↑ Increase height" })


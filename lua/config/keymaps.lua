-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", "zh", "<cmd>vertical resize -5<cr>", { desc = "← Decrease width" })
map("n", "zl", "<cmd>vertical resize +5<cr>", { desc = "→ Increase width" })
map("n", "zj", "<cmd>resize -3<cr>", { desc = "↓ Decrease height" })
map("n", "zk", "<cmd>resize +3<cr>", { desc = "↑ Increase height" })

-- 复制当前文件绝对路径
map("n", "<leader>yP", function()
  local path = vim.fn.expand("%:p")
  vim.fn.setreg("+", path)
  vim.notify("Copied path: " .. path)
end, { desc = "Copy absolute file path" })

-- 复制当前文件相对路径
map("n", "<leader>yp", function()
  local path = vim.fn.expand("%")
  vim.fn.setreg("+", path)
  vim.notify("Copied relative path: " .. path)
end, { desc = "Copy relative file path" })

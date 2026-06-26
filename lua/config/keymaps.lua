-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

local function current_relative_path()
  local file = vim.api.nvim_buf_get_name(0)
  if file == "" then
    vim.notify("No file path for current buffer", vim.log.levels.WARN)
    return nil
  end
  return vim.fn.fnamemodify(file, ":.")
end

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
  local path = current_relative_path()
  if not path then
    return
  end
  vim.fn.setreg("+", path)
  vim.notify("Copied relative path: " .. path)
end, { desc = "Copy relative file path" })

-- 复制当前文件名
map("n", "<leader>yt", function()
  local path = vim.fn.expand("%:t")
  if path == "" then
    vim.notify("No file name for current buffer", vim.log.levels.WARN)
    return
  end
  vim.fn.setreg("+", path)
  vim.notify("Copied file name: " .. path)
end, { desc = "Copy file name" })

-- 复制当前文件所在目录
map("n", "<leader>yd", function()
  local path = vim.fn.expand("%:p:h")
  if path == "" then
    vim.notify("No file directory for current buffer", vim.log.levels.WARN)
    return
  end
  vim.fn.setreg("+", path)
  vim.notify("Copied file directory: " .. path)
end, { desc = "Copy file directory" })

-- 复制当前文件相对路径和行号
map("n", "<leader>yl", function()
  local path = current_relative_path()
  if not path then
    return
  end
  path = path .. ":" .. vim.fn.line(".")
  vim.fn.setreg("+", path)
  vim.notify("Copied relative path with line: " .. path)
end, { desc = "Copy relative path with line" })

-- 复制当前文件相对路径、行号和列号
map("n", "<leader>yL", function()
  local path = current_relative_path()
  if not path then
    return
  end
  path = path .. ":" .. vim.fn.line(".") .. ":" .. vim.fn.col(".")
  vim.fn.setreg("+", path)
  vim.notify("Copied relative path with line and column: " .. path)
end, { desc = "Copy relative path with line and column" })

-- 复制当前工作目录
map("n", "<leader>yw", function()
  local path = vim.fn.getcwd()
  vim.fn.setreg("+", path)
  vim.notify("Copied working directory: " .. path)
end, { desc = "Copy working directory" })

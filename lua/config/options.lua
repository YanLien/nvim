-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
vim.opt.clipboard = "unnamedplus"
vim.g.autoformat = false
vim.b.autoformat = false

-- 禁用 buffer 相关的格式化
vim.g.format_on_save = false
vim.b.format_on_save = false

-- 禁用 LSP 的自动格式化
vim.g.format_on_save_enabled = false
vim.b.format_on_save_enabled = false

vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true

vim.opt.showbreak = "↪"

vim.opt.whichwrap:append("<,>,[,],h,l")

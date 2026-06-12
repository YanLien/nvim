return {
  -- vscode 主题
  {
    "Mofiqul/vscode.nvim",
    priority = 1000,
    opts = {
      style = "light",
    },
  },

  -- 设置为默认主题
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vscode",
    },
  },
}

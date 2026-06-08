return {
  -- 安装 rose-pine 主题
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
  },

  -- VSCode 主题（备选）
  -- {
  --   "Mofiqul/vscode.nvim",
  --   priority = 1000,
  --   lazy = false,
  --   name = "vscode",
  --   opts = {},
  -- },

  -- 设置为默认主题
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine-main",
      -- colorscheme = "vscode",
    },
  },
}

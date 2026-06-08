return {
  -- tokyonight 主题
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night",
    },
  },

  -- 设置为默认主题
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}

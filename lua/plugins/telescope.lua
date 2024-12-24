-- lua/plugins/telescope.lua
return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      file_ignore_patterns = {},
      vimgrep_arguments = {
        "rg",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",
        "--hidden",
        "--glob=!.git/",
      },
    },
    pickers = {
      find_files = {
        -- 这里的 hidden=true 允许搜索隐藏文件
        -- follow=true 会跟随符号链接
        find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
      },
    },
  },
}

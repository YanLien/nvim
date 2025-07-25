-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.opt.wildignore:remove(".git/")

-- 仅在SSH会话中启用OSC 52
if vim.env.SSH_TTY then
    vim.g.clipboard = {
        name = "OSC 52",
        copy = {
            ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
            ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
        },
        paste = {
            ["+"] = require("vim.ui.clipboard.osc52").paste("+"),
            ["*"] = require("vim.ui.clipboard.osc52").paste("*"),
        },
    }
    -- 这行确保 Neovim 的默认复制/粘贴操作会使用系统剪贴板
    vim.opt.clipboard:append { 'unnamed', 'unnamedplus' }
end

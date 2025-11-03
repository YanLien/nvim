return {
    { import = "lazyvim.plugins.extras.ai.copilot" },
    {
		"zbirenbaum/copilot.lua",
		event = "InsertEnter",
		opts = {
			suggestion = {
				enabled = true,
				auto_trigger = true,
				keymap = {
					accept = "<C-l>",           -- Ctrl+l：接受整个建议（右手小指+食指）
					accept_line = "<C-j>",      -- Ctrl+j：接受当前行
					accept_word = "<C-k>",      -- Ctrl+k：接受一个单词
					next = "<M-]>",             -- Alt+]：下一个建议
					prev = "<M-[>",             -- Alt+[：上一个建议
					dismiss = "<C-e>",          -- Ctrl+e：关闭建议
				},
			},
		},
		keys = {
			{ "<leader>cI", "<cmd>Copilot toggle<cr>", desc = "Toggle IA (Copilot)" },
		},
	},

	{
		"coder/claudecode.nvim",
		opts = {},
		keys = {
			{ "<leader>a", "", desc = "+ai", mode = { "n", "v" } },
			{ "<leader>ac", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude" },
			{ "<leader>af", "<cmd>ClaudeCodeFocus<cr>", desc = "Focus Claude" },
			{ "<leader>ar", "<cmd>ClaudeCode --resume<cr>", desc = "Resume Claude" },
			{ "<leader>aC", "<cmd>ClaudeCode --continue<cr>", desc = "Continue Claude" },
			{ "<leader>ab", "<cmd>ClaudeCodeAdd %<cr>", desc = "Add current buffer" },
			{ "<leader>as", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Send to Claude" },
			{
				"<leader>as",
				"<cmd>ClaudeCodeTreeAdd<cr>",
				desc = "Add file",
				ft = { "NvimTree", "neo-tree", "oil" },
			},
			-- Diff management
			{ "<leader>aa", "<cmd>ClaudeCodeDiffAccept<cr>", desc = "Accept diff" },
			{ "<leader>ad", "<cmd>ClaudeCodeDiffDeny<cr>", desc = "Deny diff" },
		},
	},
}

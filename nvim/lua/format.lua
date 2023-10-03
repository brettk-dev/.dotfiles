local util = require("formatter.util")

require("formatter").setup({
	logging = true,
	log_level = vim.log.levels.WARN,
	filetype = {
		javascript = {
			require("formatter.filetypes.javascript").prettierd,
		},

		javascriptreact = {
			require("formatter.filetypes.javascriptreact").prettierd,
		},

		lua = {
			require("formatter.filetypes.lua").stylua,
		},

		typescript = {
			require("formatter.filetypes.typescript").prettierd,
		},

		typescriptreact = {
			require("formatter.filetypes.typescriptreact").prettierd,
		},

		vue = {
			require("formatter.filetypes.vue").prettierd,
		},

		["*"] = {
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
})

vim.api.nvim_create_autocmd("BufWritePost", {
	buffer = bufnr,
	command = "FormatWrite",
})

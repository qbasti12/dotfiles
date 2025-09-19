return {
	{
		"stevearc/conform.nvim",
		event = "BufWritePre",
		config = function()
			local conform = require("conform")

			-- format code with controll + y
			vim.keymap.set("n", "<C-y>", function()
				conform.format({ async = false })
			end, { desc = "Format current buffer with conform.nvim" })

			conform.setup({
				formatters_by_ft = {
					lua = { "stylua" },
					javascript = { "prettierd" },
					typescript = { "prettierd" },
					css = { "prettierd" },
					html = { "prettierd" },
				},
			})

			vim.api.nvim_create_autocmd("BufWritePre", {
				callback = function()
					conform.format({ async = false })
				end,
			})
		end,
	},
}

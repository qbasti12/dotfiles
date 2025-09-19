return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
					visible = true, -- versteckte Dateien sichtbar machen
					hide_dotfiles = false, -- .dotfiles nicht verstecken
					hide_gitignored = false, -- von .gitignore ignorierte Dateien nicht verstecken
				},
			},
		})
		vim.keymap.set("n", "<leader>e", ":Neotree filesystem reveal left<CR>", { desc = "[E]xplorer (NeoTree)" })
	end,
}

return {
	"rebelot/kanagawa.nvim",
	priority = 1000,
	config = function()
		require("kanagawa").setup({
			style = "dragon",
			transparent = true,
		})
		vim.cmd("colorscheme kanagawa")
	end,
}

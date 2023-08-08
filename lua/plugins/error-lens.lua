return {
	"chikko80/error-lens.nvim",
	event = "BufRead",
	dependencies = {
		"nvim-telescope/telescope.nvim",
	},
	config = function()
		require("error-lens").setup({})
	end,
}

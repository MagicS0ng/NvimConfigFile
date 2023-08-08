return {
	{ "sainnhe/everforest" },
	{
		"rose-pine/neovim",
		name = "rose-pine",
	},
	{
		"folke/tokyonight.nvim",
	},
	{
		"sainnhe/edge",
	},
	{
		"Mofiqul/dracula.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			transparent = true,
			styles = {
				sidebars = "transparent",
				floats = "transparent",
			},
		},
		config = function()
			vim.cmd([[colorscheme dracula]])
		end,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		-- lazy = false,
		-- priority = 1000,
		-- opts = {
		-- 	transparent = true,
		-- 	styles = {
		-- 		sidebars = "transparent",
		-- 		floats = "transparent",
		-- 	},
		-- },
		-- config = function()
		-- 	vim.cmd([[colorscheme catppuccin-mocha]])
		-- end,
	},
}

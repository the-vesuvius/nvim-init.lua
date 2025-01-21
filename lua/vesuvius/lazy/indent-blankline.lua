return {
	{
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			vim.g.indentLine_fileTypeExclude = { "help", "telescope" }
			vim.g.indentLine_char = "│"
			vim.g.indent_blankline_show_first_indent_level = false

			require("ibl").setup()
		end,
	},
}

local m = {
	"akinsho/bufferline.nvim",
	tag = "v2.*",
	requires = "kyazdani42/nvim-web-devicons",
	config = function()
		require("bufferline").setup({

			options = {
				separator_style = "slant",
			},

			highlights = {
				buffer_selected = {
					bold = false,
					italic = false,
				},

				info_selected = {
					bold = false,
					italic = false,
				},

				duplicate_selected = {
					italic = false,
				},

				duplicate = {
					italic = false,
				},

				pick_selected = {
					bold = false,
					italic = false,
				},

				pick_visible = {
					bold = false,
					italic = false,
				},

				pick = {
					bold = false,
					italic = false,
				},
			} 
            
		})
	end,
}
return m

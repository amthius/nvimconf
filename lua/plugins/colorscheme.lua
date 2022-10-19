local m = {
   "catppuccin/nvim",
	as = "catppuccin",
	config = function()
	vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
        require("catppuccin").setup {
            styles = {
                comments = {},
                conditionals = {},
                loops = {},
                functions = {},
                keywords = {},
                strings = {},
                variables = {},
                numbers = {},
                booleans = {},
                properties = {},
                types = {},
                operators = {},
            },

            integrations = {
                cmp = true,
                nvimtree = true,
                telescope = true,
                treesitter = true,
                bufferline = true,
            },

        }
	vim.api.nvim_command "colorscheme catppuccin"
    end 
}
return m

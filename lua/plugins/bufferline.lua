local m = {
    'akinsho/bufferline.nvim',
    tag = "v2.*", 
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
        require("bufferline").setup{highlights = require("catppuccin.groups.integrations.bufferline").get{}}
    end,
}
return m

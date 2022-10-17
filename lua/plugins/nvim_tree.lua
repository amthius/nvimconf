local m = {
    'nvim-tree/nvim-tree.lua',
    config = function()
        require("nvim-tree").setup()
    end,
}
return m
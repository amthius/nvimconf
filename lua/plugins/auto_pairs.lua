return {
    "windwp/nvim-autopairs",
    event = "VimEnter",
    config = function()
        require("nvim-autopairs").setup {}
    end,
}

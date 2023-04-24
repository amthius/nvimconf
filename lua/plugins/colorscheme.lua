return {
    'davidosomething/vim-colors-meh',
    event = "VimEnter",
    config = function()
        vim.cmd("colorscheme meh")   
    end
}

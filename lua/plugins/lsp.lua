local m = {
    'williamboman/mason.nvim',
    requires = {
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig'
    },

    config = function()
        require("mason").setup()
        mason_lspconfig = require("mason-lspconfig")
        mason_lspconfig.setup {
            ensure_installed = {}  
        }

        mason_lspconfig.setup_handlers {
            function (server_name)
                require("lspconfig")[server_name].setup {}
            end,
        }
    end
}

return m
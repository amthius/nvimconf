require("core.mappings")
require("core.options")

local Plugins = {}

local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
        if fn.empty(fn.glob(install_path)) > 0 then
            fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
            vim.cmd [[packadd packer.nvim]]
            return true
        end
    return false
end

local packer_bootstrap = ensure_packer()

local function GetSeperator(OS)
    if OS == "Windows_NT" then
        return vim.fn.readdir(vim.fn.stdpath('config').."\\lua\\plugins")
    else
        return vim.fn.readdir(vim.fn.stdpath('config').."/lua/plugins") 
    end
end

return require('packer').startup(function(use)

    for _, Path in ipairs(GetSeperator(vim.loop.os_uname().sysname)) do
        local FixedPath = string.gsub(Path, ".lua", "")
        use(require("plugins."..FixedPath))
    end

    if packer_bootstrap then
    require('packer').sync()
    end
end)


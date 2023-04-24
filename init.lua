require("core.mappings")
require("core.options")

vim.cmd('autocmd BufNewFile,BufRead *.luau set filetype=lua')

local plugins = {}
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

local function get_seperator(OS)
    if OS == "Windows_NT" then
        return vim.fn.readdir(vim.fn.stdpath('config').."\\lua\\plugins")
    else
        return vim.fn.readdir(vim.fn.stdpath('config').."/lua/plugins") 
    end
end


for _, path in ipairs(get_seperator(vim.loop.os_uname().sysname)) do
    local fixed = string.gsub(path, ".lua", "")
    plugins[#plugins + 1] = require("plugins."..fixed)
end

require("lazy").setup(plugins, {
    defaults = {
        lazy = true
    }
})

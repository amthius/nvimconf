local m = {
    'Mofiqul/vscode.nvim',
    config = function() 
        require("vscode").change_style("dark")
    end,
}
return m

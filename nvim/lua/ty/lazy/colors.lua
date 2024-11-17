


return {
    {
        "folke/tokyonight.nvim",
        name = "tokyonight",
        priority = 1000,
        lazy = false,
        config = function ()
                require('tokyonight').setup({
                        variant = "night",
                })
                vim.cmd("colorscheme tokyonight-night")
        end
    }
}

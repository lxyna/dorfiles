return {
    {
        "marko-cerovac/material.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            contrast = {
                sidebars = false,
            },
            plugins = {
                'hop',
                'indent-blankline',
                'nvim-cmp',
                'nvim-tree',
            },
            lualine_style = 'default',
        },
        config = function(_, opts)
            require('material').setup(opts)

            vim.g.material_style = 'deep ocean'
            vim.cmd.colorscheme('material')
        end,
    },
}

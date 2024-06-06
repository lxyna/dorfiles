return {
    {
        'nvim-tree/nvim-tree.lua',
        lazy = false,
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        opts = { sync_root_with_cwd = true },
        keys = {
            { '<leader>s', ':NvimTreeToggle<CR>' }
        }
    },
    {
        'akinsho/nvim-bufferline.lua',
        lazy = false,
        config = function()
            local bufferline = require('bufferline')
            require('bufferline').setup({
                options = {
                    separator_style = "slant",
                    style_preset = {
                        bufferline.style_preset.no_italic
                    },
                    offsets = {
                        {
                            filetype = "NvimTree",
                            text = "File Explorer",
                            highlight = "Directory",
                            text_align = "left",
                        }
                    },
                    hover = {
                        enabled = true,
                        delay = 200,
                        reveal = {'close'},
                    },
                }
            })
        end, 
    },
    {
        'nvim-lualine/lualine.nvim',
        lazy = false,
        opts = {
            options = {
                theme = 'material-stealth',
                global_status = true,
            },
            sections = {
                lualine_x = { 'encoding', 'filetype' },
            },
        }
    },
    {
        'rcarriga/nvim-notify',
        event = "VeryLazy",
        config = function()
            vim.notify = require('notify')
        end,
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        event = "VeryLazy",
        main = "ibl",
        opts = {
          indent = {
            char = "│",
            tab_char = "│",
          },
          scope = { enabled = false },
            exclude = {
                filetypes = {
                    "help",
                    "alpha",
                    "dashboard",
                    "neo-tree",
                    "Trouble",
                    "trouble",
                    "lazy",
                    "mason",
                    "notify",
                    "toggleterm",
                    "lazyterm",
                },
            },
        },
    },
    {
        'nvim-telescope/telescope.nvim',
        event = "VeryLazy",
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('telescope').setup()

            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
            vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        version = false,
        build = ":TSUpdate",
        event = "VeryLazy",
        init = function(plugin)
            require("lazy.core.loader").add_to_rtp(plugin)
            require("nvim-treesitter.query_predicates")
        end,
        cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
        opts = {
            highlight = { enable = true },
            indent = { enable = true },
            ensure_installed = {
                "bash",
                "c",
                "cpp",
                "diff",
                "html",
                "javascript",
                "jsdoc",
                "json",
                "jsonc",
                "lua",
                "luadoc",
                "luap",
                "markdown",
                "markdown_inline",
                "python",
                "query",
                "regex",
                "toml",
                "tsx",
                "typescript",
                "vim",
                "vimdoc",
                "yaml",
            },
            auto_install = true,
        },
        config = function(_, opts)
            require("nvim-treesitter.configs").setup(opts)
        end,
    },
}

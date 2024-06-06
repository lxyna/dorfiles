return {
    {
        'Pocco81/true-zen.nvim',
        keys = {
            { '<leader>zn', function() require('true-zen').narrow(0, vim.api.nvim_buf_line_count(0)) end },
            { '<leader>zn', function() require('true-zen').narrow(vim.fn.line('v'), vim.fn.line('.')) end, mode = 'v' },
            { '<leader>zf', function() require('true-zen').focus() end },
            { '<leader>zm', function() require('true-zen').minimalist() end },
            { '<leader>za', function() require('true-zen').ataraxis() end },
        }
    },
    {
        'smoka7/hop.nvim',
        opts = {
            create_hl_autocmd = false,
            case_insensitive = false,
        },
        keys = {
            { 'h', function() require('hop').hint_char1() end },
            { 'H', function() require('hop').hint_char1({ hint_offset = -1 }) end }
        },
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
    },
    {
        'mbbill/undotree',
        keys = {
            { '<leader>u', ':UndotreeToggle<CR>' }
        },
    },
    {
        'github/copilot.vim', event = "BufRead"
    },
    {
        'akinsho/toggleterm.nvim', version = '*', config = true,
        opts = {
            start_in_insert = false,
            on_open = function(term)
                vim.cmd('startinsert!')
            end
        },
        keys = {
            { '<leader>t', ':ToggleTerm<CR>' },
            { '<leader>t', '<C-\\><C-n>:ToggleTerm<CR>', mode = 't'}
        },
        cmd = {
            'ToggleTerm',
            'ToggleTermToggleAll'
        }
    },
    {
        'kylechui/nvim-surround',
        event = "VeryLazy",
        opts = {}
    },
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'VonHeikemen/lsp-zero.nvim', branch = 'v3.x' },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip' },
}

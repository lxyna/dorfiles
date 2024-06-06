return {
    {
        'okuuva/auto-save.nvim',
        lazy = false,
        event = { "InsertLeave", "TextChanged" },
        opts = {
            execution_message = {
                message = ""
            },
            trigger_events = {
                defer_save = {}
            }
        }
    },
    {
        'folke/persistence.nvim',
        event = "BufReadPre",
        opts = {},
        keys = {
            { '<leader>qs', function() require('persistence').load() end },
            { '<leader>ql', function() require('persistence').load({ last = true }) end },
            { '<leader>qd', function() require('persistence').stop() end },
        },
    },
    {
        'jghauser/mkdir.nvim',
        event = "BufWritePre",
    }
}

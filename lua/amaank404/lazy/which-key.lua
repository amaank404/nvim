return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
        -- Your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        icons = {
            mappings = false
        }
    },
    keys = {
        {
            "<leader>?",
            function()
                require("which-key").show({ global = false })
            end,
            desc = "Buffer Local Keymaps (which-key)",
        },
        --        { "<leader>.", group = "Code Ops", desc = "Code Ops" },
    },
    priority = 100,
}

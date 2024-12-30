return {
    "olimorris/persisted.nvim",
    lazy = false, -- make sure the plugin is always loaded at startup
    config = function()
        require("persisted").setup {}
        require("telescope").load_extension("persisted")

        require("which-key").add({
            { "<leader>fp", "<cmd>Telescope persisted<CR>", desc = "Session Manager" },
            { "<leader>p",  group = "Persisted" },
            { "<leader>pb", "<cmd>SessionStart<CR>",        desc = "Session Begin" },
            { "<leader>ps", "<cmd>SessionStop<CR>",         desc = "Session Stop" },
            { "<leader>pr", "<cmd>SessionLoadLast<CR>",     desc = "Load Recent" },
            { "<leader>px", "<cmd>SessionDelete<CR>",       desc = "Session Delete" },
        })
    end
}

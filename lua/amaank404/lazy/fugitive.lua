return {
    "tpope/vim-fugitive",
    config = function()
        local wk = require("which-key")

        wk.add({
            { "<leader>g",  group = "git" },
            { "<leader>gg", vim.cmd.Git,         desc = "Open Fugitive" },
            { "<leader>gp", "<cmd>Git push<CR>", desc = "Push" },
            { "<leader>gd", "<cmd>Git pull<CR>", desc = "Pull" },
        })
    end
}

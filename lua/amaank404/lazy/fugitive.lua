return {
    "tpope/vim-fugitive",
    config = function()
        local wk = require("which-key")

        wk.add({
            { "<leader>g",  group = "git" },
            { "<leader>gs", vim.cmd.Git,  desc = "Open Fugitive" }
        })
    end
}

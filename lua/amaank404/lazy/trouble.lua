return {
    "folke/trouble.nvim",
    cmd = "Trouble",
    enabled = true,
    keys = {
        {
            "<leader>.x",
            "<cmd>Trouble diagnostics toggle<cr>",
            desc = "Diagnostics",
        },
        {
            "<leader>.X",
            "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
            desc = "Buffer Diagnostics",
        },
        {
            "<leader>.s",
            "<cmd>Trouble symbols toggle focus=false<cr>",
            desc = "Symbols",
        },
        {
            "<leader>.l",
            "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
            desc = "LSP Definitions / References / ...",
        },
        {
            "<leader>.L",
            "<cmd>Trouble loclist toggle<cr>",
            desc = "Location List",
        },
        {
            "<leader>.Q",
            "<cmd>Trouble qflist toggle<cr>",
            desc = "Quickfix List",
        },
    },

    opts = {},
    config = function()
        require("trouble").setup({})

        local wk = require("which-key")

        wk.add({

        })
    end
}

return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.8",

    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
        require('telescope').setup({})

        local builtin = require('telescope.builtin')
        local wk = require("which-key")

        wk.add({
            { "<leader>f",  group = "Telescope" },
            { "<leader>ft", "<cmd>Telescope<CR>", desc = "Telescope" },
            { "<leader>ff", builtin.find_files,   desc = "Find Files" },
            { "<leader>fg", builtin.git_files,    desc = "Git Files" },
            {
                "<leader>fw",
                function()
                    local word = vim.fn.expand("<cword>")
                    builtin.grep_string({ search = word })
                end,
                desc = "Find Word"
            },
            {
                "<leader>fW",
                function()
                    local word = vim.fn.expand("<cWORD>")
                    builtin.grep_string({ search = word })
                end,
                desc = "Find Full Word"
            },
            {
                "<leader>fs",
                function()
                    builtin.grep_string({ search = vim.fn.input("Grep > ") })
                end,
                desc = "Grep"
            },
            { "<leader>fh", builtin.help_tags,   desc = "Help" },
            { "<leader>fb", builtin.buffers,     desc = "Buffers" },
            { "<leader>fc", builtin.colorscheme, desc = "Color Scheme" },
        })
    end,

    priority = 100,
}

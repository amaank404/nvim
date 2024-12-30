return {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
        require("toggleterm").setup({})

        function _G.set_terminal_keymaps()
            local opts = function(opts)
                return { buffer = 0, desc = opts.desc }
            end
            vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts({ desc = "Escape Terminal" }))
            vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts({ desc = "Window Commands" }))
        end

        -- if you only want these mappings for toggle term use term://*toggleterm#* instead
        vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

        local wk = require("which-key")
        wk.add({
            { "<leader>q",  group = "Terminal" },
            { '<leader>q1', '<cmd>1ToggleTerm<CR>',         desc = "Terminal 1" },
            { '<leader>q2', '<cmd>2ToggleTerm<CR>',         desc = "Terminal 2" },
            { '<leader>q3', '<cmd>3ToggleTerm<CR>',         desc = "Terminal 3" },
            { '<leader>q4', '<cmd>4ToggleTerm<CR>',         desc = "Terminal 4" },
            { '<leader>q5', '<cmd>5ToggleTerm<CR>',         desc = "Terminal 5" },
            { '<leader>q6', '<cmd>6ToggleTerm<CR>',         desc = "Terminal 6" },
            { '<leader>q7', '<cmd>7ToggleTerm<CR>',         desc = "Terminal 7" },
            { '<leader>q8', '<cmd>8ToggleTerm<CR>',         desc = "Terminal 8" },
            { '<leader>q9', '<cmd>9ToggleTerm<CR>',         desc = "Terminal 9" },
            { '<leader>qq', '<cmd>ToggleTermToggleAll<CR>', desc = "Toggle All Terminals" }
        })
    end
}

require("amaank404.remap")
require("amaank404.lazy_init")

-- start of your init.lua
vim.g.loaded_netrw       = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.relativenumber   = true
vim.opt.number           = true

vim.opt.tabstop          = 4
vim.opt.softtabstop      = 4
vim.opt.shiftwidth       = 4
vim.opt.expandtab        = true

vim.opt.smartindent      = true
vim.opt.wrap             = false

vim.opt.hlsearch         = false
vim.opt.incsearch        = true

vim.opt.scrolloff        = 8

vim.opt.colorcolumn      = "100"

-- Neovide specific details
if vim.g.neovide then
    vim.g.neovide_scale_factor = 0.8
    vim.g.neovide_title_background_color = string.format(
        "%x",
        vim.api.nvim_get_hl(0, { id = vim.api.nvim_get_hl_id_by_name("Normal") }).bg
    )


    local function set_ime(args)
        if args.event:match("Enter$") then
            vim.g.neovide_input_ime = true
        else
            vim.g.neovide_input_ime = false
        end
    end

    local ime_input = vim.api.nvim_create_augroup("ime_input", { clear = true })

    vim.api.nvim_create_autocmd({ "InsertEnter", "InsertLeave" }, {
        group = ime_input,
        pattern = "*",
        callback = set_ime
    })

    vim.api.nvim_create_autocmd({ "CmdlineEnter", "CmdlineLeave" }, {
        group = ime_input,
        pattern = "[/\\?]",
        callback = set_ime
    })
end

-- Recall last used colorscheme
local theme = require('last-color').recall() or 'kanagawa'

print(theme)

vim.cmd.colorscheme(theme)

vim.api.nvim_create_autocmd({ 'UIEnter' }, {
    callback = function(event)
        local client = vim.api.nvim_get_chan_info(vim.v.event.chan).client
        if client ~= nil and client.name == "Firenvim" then
            vim.opt.wrap = true

            vim.g.firenvim_config = {
                globalSettings = { alt = "all" },
                localSettings = {
                    [".*"] = {
                        cmdline  = "neovim",
                        content  = "text",
                        priority = 0,
                        selector = "textarea",
                        takeover = "never"
                    }
                }
            }
        end
    end
})

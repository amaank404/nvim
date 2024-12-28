return {
	'akinsho/toggleterm.nvim',
	version = "*",
	config = function()
		require("toggleterm").setup({})

		function _G.set_terminal_keymaps()
			local opts = { buffer = 0 }
			vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
			vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
			vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
			vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
			vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
			vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
		end

		-- if you only want these mappings for toggle term use term://*toggleterm#* instead
		vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

		vim.keymap.set('n', '<leader>q1', '<cmd>1ToggleTerm<CR>')
		vim.keymap.set('n', '<leader>q2', '<cmd>2ToggleTerm<CR>')
		vim.keymap.set('n', '<leader>q3', '<cmd>3ToggleTerm<CR>')
		vim.keymap.set('n', '<leader>q4', '<cmd>4ToggleTerm<CR>')
		vim.keymap.set('n', '<leader>q5', '<cmd>5ToggleTerm<CR>')
		vim.keymap.set('n', '<leader>q6', '<cmd>6ToggleTerm<CR>')
		vim.keymap.set('n', '<leader>q7', '<cmd>7ToggleTerm<CR>')
		vim.keymap.set('n', '<leader>q8', '<cmd>8ToggleTerm<CR>')
		vim.keymap.set('n', '<leader>q9', '<cmd>9ToggleTerm<CR>')

		vim.keymap.set('n', '<leader>qq', '<cmd>ToggleTermToggleAll<CR>')
	end
}

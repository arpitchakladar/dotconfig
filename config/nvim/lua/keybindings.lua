function map(mode, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "<c-n>", ":NvimTreeToggle<CR>", { silent = true })
map("n", "<C-H>", "<C-W>h", { silent = true })
map("n", "<C-J>", "<C-W>j", { silent = true })
map("n", "<C-K>", "<C-W>k", { silent = true })
map("n", "<C-L>", "<C-W>l", { silent = true })

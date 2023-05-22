require("plugins");
require("keybindings");

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.o.laststatus = 3
vim.cmd "highlight EndOfBuffer ctermfg=bg"
vim.o.number = true
vim.o.list = true
vim.o.listchars = "tab:| ,trail:␣,leadmultispace:␣"
vim.api.nvim_create_autocmd("BufEnter", {
	pattern = { "*" },
	callback = function()
		vim.o.tabstop = 2
		vim.o.shiftwidth = 2
		vim.o.expandtab = false
	end
})


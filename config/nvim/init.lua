require("plugins");
require("keybindings");

vim.o.laststatus = 3
vim.cmd "highlight EndOfBuffer ctermfg=bg"
vim.api.nvim_create_autocmd("BufRead", {
	callback = function()
		vim.o.tabstop = 2
		vim.o.shiftwidth = 2
		vim.o.expandtab = false
		vim.o.number = true
		vim.o.list = true
		vim.o.listchars = "tab:| ,trail:␣,leadmultispace:␣"
	end
})

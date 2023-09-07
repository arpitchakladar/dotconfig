local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{
		"morhetz/gruvbox",
		config = function()
			vim.cmd "colorscheme gruvbox"
		end
	},
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("lualine").setup()
		end
	},
	{
		"nvim-tree/nvim-web-devicons",
		config = function()
			require("nvim-web-devicons").setup()
		end
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		keys = {
			{ "<c-n>", "<cmd>Neotree toggle<cr>", desc = "NeoTree" }
		},
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim"
		},
		lazy = false,
		init = function()
			require("neo-tree").setup {
				default_component_configs = {
					indent = {
						indent_size = 2,
						padding = 0
					}
				},
				window = {
					width = 30
				},
				filesystem = {
					filtered_items = {
						hide_hidden = false,
						hide_gitignored = false,
						hide_dotfiles = false
					}
				}
			}
		end
	}
})

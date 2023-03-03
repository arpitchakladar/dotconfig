require("nvim-tree").setup {
	renderer = {
		indent_width = 0,
		icons = {
			symlink_arrow = "",
			show = {
				folder_arrow = false
			},
			glyphs = {
				git = {
					unstaged = "",
					untracked = "?",
					renamed = "",
					ignored = ""
				}
			}
		}
	},
	filters = {
		dotfiles = false
	},
	git = {
		ignore = false
	}
}
require("nvim-web-devicons").setup()
require("lualine").setup()

vim.cmd "colorscheme gruvbox"

require("packer").startup(function(use)
	use "wbthomason/packer.nvim"
	use "morhetz/gruvbox"
	use "nvim-lualine/lualine.nvim"
	use "nvim-tree/nvim-tree.lua"
	use "nvim-tree/nvim-web-devicons"
end)

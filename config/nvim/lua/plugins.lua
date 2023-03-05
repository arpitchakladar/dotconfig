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
require("nvim-web-devicons").setup()
require("lualine").setup()

vim.cmd "colorscheme gruvbox"

require("packer").startup(function(use)
	use "wbthomason/packer.nvim"
	use "morhetz/gruvbox"
	use "nvim-lualine/lualine.nvim"
	use {
		"nvim-neo-tree/neo-tree.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		}
	}
	use "nvim-tree/nvim-web-devicons"
end)

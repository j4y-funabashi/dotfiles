-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	{ "bullets-vim/bullets.vim" },

	{ "ellisonleao/glow.nvim", config = true, cmd = "Glow" },

	{
		"ray-x/go.nvim",
		dependencies = { -- optional packages
			"ray-x/guihua.lua",
			"neovim/nvim-lspconfig",
			"nvim-treesitter/nvim-treesitter",
		},
		config = function()
			require("go").setup()
		end,
		event = { "CmdlineEnter" },
		ft = { "go", "gomod" },
		build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
	},

	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
	},

	{
		"seblyng/roslyn.nvim",
		ft = "cs",
		opts = {
			-- your configuration comes here; leave empty for default settings
		},
	},

	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 2000,
		init = function()
			vim.cmd.colorscheme("catppuccin-mocha")
		end,
	},
}

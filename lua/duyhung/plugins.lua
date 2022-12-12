local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })

		print("Installing packer...")

		vim.cmd([[packadd packer.nvim]])

		return true
	end

	return false
end

local packer_bootstrap = ensure_packer()

-- reload neovim whenever plugins.lua is saved
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

return require("packer").startup({
	function(use)
		use("wbthomason/packer.nvim")
		--Alpha nvim
		use({
			"goolord/alpha-nvim",
			requires = { "kyazdani42/nvim-web-devicons" },
			config = function()
				require("alpha").setup(require("alpha.themes.startify").config)
			end,
		})
		--colorscheme
		use("folke/tokyonight.nvim")
		-- use("Mofiqul/dracula.nvim")
		use("ellisonleao/gruvbox.nvim")
		use("christoomey/vim-tmux-navigator") --vim-tmux-navigator
		use("nvim-tree/nvim-tree.lua") --nvim-tree
		--treesister
		use({
			"nvim-treesitter/nvim-treesitter",
			run = ":TSUpdate",
		})
		use("nvim-treesitter/nvim-treesitter-textobjects")

		use("kyazdani42/nvim-web-devicons") --icons
		use("nvim-lua/plenary.nvim") -- Common utilities
		-- automatic bracket pairs
		use({
			"windwp/nvim-autopairs",
			config = function()
				require("nvim-autopairs").setup({})
			end,
		})
		-- autoclose and rename html tags
		use({
			"windwp/nvim-ts-autotag",
			config = function()
				require("nvim-ts-autotag").setup({})
			end,
		})
		use("lukas-reineke/indent-blankline.nvim") -- indent guides
		-- telescope
		use("nvim-telescope/telescope.nvim")
		use("nvim-telescope/telescope-file-browser.nvim")

		use({ "akinsho/bufferline.nvim", tag = "v3.*", requires = "kyazdani42/nvim-web-devicons" }) --bufferline
		-- Winbar
		use({ "SmiteshP/nvim-navic" })

		use("nvim-lualine/lualine.nvim") -- status line

		-- snippets
		use("L3MON4D3/LuaSnip")
		use("rafamadriz/friendly-snippets")

		-- lsp
		use("neovim/nvim-lspconfig")

		-- lsp installer
		use("williamboman/mason.nvim")
		use("williamboman/mason-lspconfig.nvim")

		-- lsp ui
		use("glepnir/lspsaga.nvim")

		-- formatting, code actions and diagnostics
		use({
			"jose-elias-alvarez/null-ls.nvim",
			commit = "76d0573fc159839a9c4e62a0ac4f1046845cdd50",
		})
		-- diagnostics list
		use("folke/trouble.nvim")

		-- autocompletion
		use("hrsh7th/nvim-cmp")
		use("hrsh7th/cmp-buffer")
		use("hrsh7th/cmp-nvim-lsp")
		use("hrsh7th/cmp-nvim-lua")
		use("hrsh7th/cmp-path")
		use("saadparwaiz1/cmp_luasnip")

		use("akinsho/toggleterm.nvim")

		use("lewis6991/impatient.nvim")

		--comment string   use 'gcc' to comment and uncomment
		use({
			"numToStr/Comment.nvim",
			config = function()
				require("Comment").setup()
			end,
		})

		-- git decorations in files
		use({
			"lewis6991/gitsigns.nvim",
			config = function()
				require("gitsigns").setup()
			end,
		})

		use("dinhhuy258/git.nvim")
		if packer_bootstrap then
			require("packer").sync()
		end
	end,
	config = {
		display = {
			open_fn = require("packer.util").float,
		},
	},
})

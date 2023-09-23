vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
  use 'williamboman/mason.nvim'
	use 'rstacruz/vim-closer'
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use { 'junegunn/fzf', run = 'fzf#install()' }
  use 'junegunn/fzf.vim'
	use 'gpanders/editorconfig.nvim'
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use {
		'glepnir/galaxyline.nvim',
		branch = 'main',
		-- your statusline
		config = function()
			require('eviline')
		end,
		-- some optional icons
		requires = { 'nvim-tree/nvim-web-devicons', opt = true },
	}
	use {
		'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
		config = function() require('gitsigns').setup() end
	}
	use 'fatih/vim-go'
	use 'sainnhe/everforest'
end)

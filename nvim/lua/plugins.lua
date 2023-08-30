vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'rstacruz/vim-closer'
	use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
	use 'gpanders/editorconfig.nvim'
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use {
		'glepnir/galaxyline.nvim', branch = 'main', config = function() require'statusline' end,
		requires = {'kyazdani42/nvim-web-devicons'}
	}
	use {
		'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
		config = function() require('gitsigns').setup() end
	}
  use 'sainnhe/everforest'
end)

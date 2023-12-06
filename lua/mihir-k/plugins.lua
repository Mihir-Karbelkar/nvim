return {
	"folke/neodev.nvim",
	"folke/which-key.nvim",
	{ "folke/neoconf.nvim",          cmd = "Neoconf" },
	'williamboman/mason-lspconfig.nvim',
	{
		'charludo/projectmgr.nvim',
		lazy = false, -- important!
	}, { 'dasupradyumna/midnight.nvim', lazy = false, priority = 1000 }, {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.4',
	dependencies = { 'nvim-lua/plenary.nvim' }
},
	{ 'neovim/nvim-lspconfig' },
	{ 'hrsh7th/cmp-nvim-lsp' },
	{ 'hrsh7th/nvim-cmp' },
	{ 'L3MON4D3/LuaSnip' },
	{ 'williamboman/mason-lspconfig.nvim' }
	, {
	-- Add indentation guides even on blank lines
	'lukas-reineke/indent-blankline.nvim',
	-- Enable `lukas-reineke/indent-blankline.nvim`
	-- See `:help ibl`
	main = 'ibl',
	opts = {},
}, {
	"williamboman/mason.nvim"
}, { 'ThePrimeagen/harpoon',    branch = 'harpoon2', requires = { "nvim-lua/plenary.nvim" } }, { 'christoomey/vim-tmux-navigator' }, {
	"kdheepak/lazygit.nvim",
	requires = {
		"nvim-telescope/telescope.nvim",
		"nvim-lua/plenary.nvim",
	},
	config = function()
		require('telescope').setup({ file_ignore_patterns = { "node%_modules/.*" } })
		require("telescope").load_extension("lazygit")
	end
}, { "elentok/format-on-save.nvim" }, { "rebelot/kanagawa.nvim" }
}

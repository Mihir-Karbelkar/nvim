return {
	"folke/neodev.nvim",
	"folke/which-key.nvim",
	{ "folke/neoconf.nvim",          cmd = "Neoconf" },
	'williamboman/mason-lspconfig.nvim',
	'feline-nvim/feline.nvim',
	'nvim-tree/nvim-web-devicons',
	{
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	},
	{
		'charludo/projectmgr.nvim',
		lazy = false, -- important!
	},
	{ 'dasupradyumna/midnight.nvim', lazy = false,   priority = 1000 },
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.4',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{ 'neovim/nvim-lspconfig' },
	{
		-- Autocompletion
		'hrsh7th/nvim-cmp',
		dependencies = {
			-- Snippet Engine & its associated nvim-cmp source
			'L3MON4D3/LuaSnip',
			'saadparwaiz1/cmp_luasnip',

			-- Adds LSP completion capabilities
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-path',

			-- Adds a number of user-friendly snippets
			'rafamadriz/friendly-snippets',
		},
	},
	{ 'williamboman/mason-lspconfig.nvim' },
	{
		-- Add indentation guides even on blank lines
		'lukas-reineke/indent-blankline.nvim',
		-- Enable `lukas-reineke/indent-blankline.nvim`
		-- See `:help ibl`
		main = 'ibl',
		opts = {
			enabled = true,
			indent = {
				char = '|',
			}
		}
	},
	{
		"williamboman/mason.nvim"
	},
	{ 'ThePrimeagen/harpoon',          branch = 'harpoon2', requires = { "nvim-lua/plenary.nvim" } },
	{ 'christoomey/vim-tmux-navigator' },
	{
		"kdheepak/lazygit.nvim",
		requires = {
			"nvim-telescope/telescope.nvim",
			"nvim-lua/plenary.nvim",
		},
		config = function()
			require('telescope').setup({ file_ignore_patterns = { "node%_modules/.*" } })
			require("telescope").load_extension("lazygit")
		end
	},
	{ "elentok/format-on-save.nvim" },
	{ 'rose-pine/neovim',           name = 'rose-pine' },
	{
		'tpope/vim-commentary',
		event = 'VeryLazy',
	},
	{ 'lewis6991/gitsigns.nvim' },
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup {}
		end,
	}
}

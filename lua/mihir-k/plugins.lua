return {
	"folke/neodev.nvim",
	"folke/which-key.nvim",
	'prettier/vim-prettier',
	{ "folke/neoconf.nvim",    cmd = "Neoconf" },
	'williamboman/mason-lspconfig.nvim',
	'feline-nvim/feline.nvim',
	'nvim-tree/nvim-web-devicons',
	{
		-- Set lualine as statusline
		'nvim-lualine/lualine.nvim',
		-- See `:help lualine.txt`
		opts = {
			options = {
				icons_enabled = false,
				theme = 'onedark',
				component_separators = '|',
				section_separators = '',
			},
		},
	},

	{
		-- Add indentation guides even on blank lines
		'lukas-reineke/indent-blankline.nvim',
		-- Enable `lukas-reineke/indent-blankline.nvim`
		-- See `:help ibl`
		main = 'ibl',
		opts = {},
	},

	-- "gc" to comment visual regions/lines
	{ 'numToStr/Comment.nvim', opts = {} },
	{
		'charludo/projectmgr.nvim',
		lazy = false, -- important!
	},
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.4',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{
		-- LSP Configuration & Plugins
		'neovim/nvim-lspconfig',
		dependencies = {
			-- Automatically install LSPs to stdpath for neovim
			'williamboman/mason.nvim',
			'williamboman/mason-lspconfig.nvim',

			-- Useful status updates for LSP
			-- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
			{ 'j-hui/fidget.nvim', opts = {} },

			-- Additional lua configuration, makes nvim stuff amazing!
			'folke/neodev.nvim',
		},
	},
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
	{ 'ThePrimeagen/harpoon',             branch = 'harpoon2', requires = { "nvim-lua/plenary.nvim" } },
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

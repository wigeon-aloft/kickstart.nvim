require("lazy").setup({
	-- Detect tabstop and shiftwidth automatically
	"tpope/vim-sleuth",

	-- For changing enclosing characters around strings
	"tpope/vim-surround",

	-- Handy pairings and common commands
	"tpope/vim-unimpaired",

	-- Clipboard QoL
	-- "svermeulen/vim-easyclip",

	-- For updating cwd to project root directory dynamically)
	"airblade/vim-rooter",

	-- Plugins with more verbose/extensive configs are configured in an individual file
	-- stored in lua/custom/plugins
	require("custom.plugins.autopairs"),
	require("custom.plugins.barbar"),
	require("custom.plugins.cmp"),
	require("custom.plugins.conform"),
	require("custom.plugins.debug"),
	-- require("custom.plugins.gdlsp"),
	require("custom.plugins.gitsigns"),
	require("custom.plugins.lazygit"),
	require("custom.plugins.lspconfig"),
	require("custom.plugins.luarocks"),
	require("custom.plugins.mini"),
	require("custom.plugins.neo-tree"),
	require("custom.plugins.neovim-project"),
	require("custom.plugins.telescope"),
	require("custom.plugins.todo-comments"),
	require("custom.plugins.treesitter"),
	require("custom.plugins.typescript-tools"),
	require("custom.plugins.ufo"),
	require("custom.plugins.which-key"),
	-- require("custom.themes.gruvbox"),
	-- require("custom.themes.catppuccin"),
	require("custom.themes.gruvbox-material"),
	require("custom.plugins.arduino"),
	--require 'custom.plugins.trouble',
}, {
	ui = {
		-- If you are using a Nerd Font: set icons to an empty table which will use the
		-- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
		icons = vim.g.have_nerd_font and {} or {
			cmd = "⌘",
			config = "🛠",
			event = "📅",
			ft = "📂",
			init = "⚙",
			keys = "🗝",
			plugin = "🔌",
			runtime = "💻",
			require = "🌙",
			source = "📄",
			start = "🚀",
			task = "📌",
			lazy = "💤 ",
		},
	},
})

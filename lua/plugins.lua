require('lazy').setup({
  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  -- vim-rooter (for updating cwd to project root directory dynamically)
  'airblade/vim-rooter',

  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },

  -- Plugins with more verbose/extensive configs are configured in an individual file
  -- stored in lua/custom/plugins
  require 'custom.plugins.autopairs',
  require 'custom.plugins.gruvbox',
  require 'custom.plugins.debug',
  require 'custom.plugins.neo-tree',
  require 'custom.plugins.typescript-tools',
  require 'custom.plugins.gitsigns',
  require 'custom.plugins.lazygit',
  require 'custom.plugins.which-key',
  require 'custom.plugins.telescope',
  require 'custom.plugins.lspconfig',
  require 'custom.plugins.conform',
  require 'custom.plugins.cmp',
  require 'custom.plugins.todo-comments',
  require 'custom.plugins.mini',
  require 'custom.plugins.treesitter',
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

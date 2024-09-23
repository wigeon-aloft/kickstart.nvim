-- neo-tree minimal config
return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function()
    require('neo-tree').setup {
      sources = { 'filesystem', 'buffers', 'git_status' },
      filesystem = {
        bind_to_cwd = true,
        filtered_items = {
          visible = true,
          show_hidden_count = true,
          hide_dotfiles = false,
          hide_by_name = {
            '.git',
          },
        },
        follow_current_file = { enabled = true },
        use_libuv_file_watcher = true,
      },
      window = {
        mappings = {
          ['P'] = { 'toggle_preview', config = { use_float = true, use_image_nvim = true } },
          ['l'] = 'open',
          ['h'] = 'close_node',
          ['<space>'] = 'none',
        },
      },
    }
  end,
}

-- Adds git related signs to the gutter, as well as utilities for managing changes
return {
  {
    'lewis6991/gitsigns.nvim',
    opts = {
      on_attach = function(bufnr)
        local gitsigns = require 'gitsigns'

        local function map(mode, l, r, opts)
          opts = opts or {}
          opts.buffer = bufnr
          vim.keymap.set(mode, l, r, opts)
        end

        -- Navigation
        map('n', ']c', function()
          if vim.wo.diff then
            vim.cmd.normal { ']c', bang = true }
          else
            gitsigns.nav_hunk 'next'
          end
        end, { desc = 'Jump to next git [c]hange' })

        map('n', '[c', function()
          if vim.wo.diff then
            vim.cmd.normal { '[c', bang = true }
          else
            gitsigns.nav_hunk 'prev'
          end
        end, { desc = 'Jump to previous git [c]hange' })

        -- Actions
        -- visual mode
        map('v', '<leader>hs', function()
          gitsigns.stage_hunk { vim.fn.line '.', vim.fn.line 'v' }
        end, { desc = '[s]tage git hunk' })
        map('v', '<leader>hr', function()
          gitsigns.reset_hunk { vim.fn.line '.', vim.fn.line 'v' }
        end, { desc = '[r]eset git hunk' })
        -- normal mode
        map('n', '<leader>vhs', gitsigns.stage_hunk, { desc = '[s]tage hunk' })
        map('n', '<leader>vhr', gitsigns.reset_hunk, { desc = '[r]eset hunk' })
        map('n', '<leader>vhS', gitsigns.stage_buffer, { desc = '[S]tage buffer' })
        map('n', '<leader>vhu', gitsigns.undo_stage_hunk, { desc = '[u]ndo stage hunk' })
        map('n', '<leader>vhR', gitsigns.reset_buffer, { desc = '[R]eset buffer' })
        map('n', '<leader>vhp', gitsigns.preview_hunk, { desc = '[p]review hunk' })
        map('n', '<leader>vhb', gitsigns.blame_line, { desc = '[b]lame line' })
        map('n', '<leader>vhd', gitsigns.diffthis, { desc = '[d]iff against index' })
        map('n', '<leader>vhD', function()
          gitsigns.diffthis '@'
        end, { desc = 'git [D]iff against last commit' })
        -- Toggles
        map('n', '<leader>tb', gitsigns.toggle_current_line_blame, { desc = '[T]oggle git show [b]lame line' })
        map('n', '<leader>tD', gitsigns.toggle_deleted, { desc = '[T]oggle git show [D]eleted' })
      end,
    },
  },
}

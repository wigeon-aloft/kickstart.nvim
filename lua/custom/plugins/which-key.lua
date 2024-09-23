-- Useful plugin to show you pending keybinds.
return {
  'folke/which-key.nvim',
  event = 'VimEnter', -- Sets the loading event to 'VimEnter'
  config = function() -- This is the function that runs, AFTER loading
    require('which-key').setup()

    -- Document existing key chains
    local wk = require 'which-key'
    wk.add {
      { '<leader>c', group = '[C]ode', icon = { icon = '' } },
      { '<leader>c_', hidden = true },
      { '<leader>v', group = '[V]ersion control', icon = { icon = '' } },
      { '<leader>v_', hidden = true },
      { '<leader>s', group = '[S]earch', icon = { icon = '' } },
      { '<leader>s_', hidden = true },
      { '<leader>b', group = '[B]uffers', icon = { icon = '' } },
      { '<leader>b_', hidden = true },
      { '<leader>bc', group = '[B]uffer [C]lose', icon = { icon = '' } },
      { '<leader>bc_', hidden = true },
      { '<leader>bg', group = '[B]uffer [G]oto', icon = { icon = '󰞞' } },
      { '<leader>bg_', hidden = true },
      { '<leader>bs', group = '[B]uffer [S]ort', icon = { icon = '󰒺' } },
      { '<leader>bs_', hidden = true },
      { '<leader>e', group = '[E]ditor', icon = { icon = '' } },
      { '<leader>e_', hidden = true },
      { '<leader>l', group = '[L]azy', icon = { icon = '󰒲' } },
      { '<leader>l_', hidden = true },
      { '<leader>d', group = '[D]iagnostics', icon = { icon = '' } },
      { '<leader>d_', hidden = true },
    }

    -- Show all keymaps with <leader>?
    wk.add {
      {
        '<leader>?',
        function()
          require('which-key').show { global = false }
        end,
        desc = 'Buffer Local Keymaps (which-key)',
        icon = { icon = '' },
      },
    }

    -- Visualmode keymaps
    wk.add {
      { '<leader>h', desc = 'Git [H]unk', mode = 'v' },
    }
  end,
}

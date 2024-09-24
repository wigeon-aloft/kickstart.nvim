-- Useful plugin to show you pending keybinds.
return {
  'folke/which-key.nvim',
  event = 'VimEnter', -- Sets the loading event to 'VimEnter'
  config = function() -- This is the function that runs, AFTER loading
    require('which-key').setup()

    -- Document existing key chains
    local wk = require 'which-key'
    wk.add {
      { '<leader>c', group = '[c]ode', icon = { icon = '󰘦' } },
      { '<leader>c_', hidden = true },
      { '<leader>v', group = '[v]ersion control', icon = { icon = '' } },
      { '<leader>v_', hidden = true },
      { '<leader>vh', group = 'Git [h]unk', icon = { icon = '' } },
      { '<leader>vh_', hidden = true },
      { '<leader>s', group = '[s]earch', icon = { icon = '󱡴' } },
      { '<leader>s_', hidden = true },
      { '<leader>b', group = '[b]uffers', icon = { icon = '' } },
      { '<leader>b_', hidden = true },
      { '<leader>bc', group = '[b]uffer [c]lose', icon = { icon = '' } },
      { '<leader>bc_', hidden = true },
      { '<leader>bg', group = '[b]uffer [g]oto', icon = { icon = '󰞞' } },
      { '<leader>bg_', hidden = true },
      { '<leader>bs', group = '[b]uffer [s]ort', icon = { icon = '󰒺' } },
      { '<leader>bs_', hidden = true },
      { '<leader>e', group = '[e]ditor', icon = { icon = '󰂮' } },
      { '<leader>e_', hidden = true },
      { '<leader>l', group = '[l]azy', icon = { icon = '󰒲' } },
      { '<leader>l_', hidden = true },
      { '<leader>d', group = '[d]iagnostics', icon = { icon = '' } },
      { '<leader>d_', hidden = true },
      { '<leader>x', group = '[x] debug', icon = { icon = '󰃤' } },
      { '<leader>x_', hidden = true },
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
      { '<leader>h', desc = 'Git [h]unk', mode = 'v' },
    }
  end,
}

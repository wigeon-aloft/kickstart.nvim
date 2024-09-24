-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [d]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [d]iagnostic message' })
vim.keymap.set('n', '<leader>de', vim.diagnostic.open_float, { desc = '[e]rror messages' })
vim.keymap.set('n', '<leader>dq', vim.diagnostic.setloclist, { desc = '[q]uickfix list' })

-- Lazy keymaps
vim.keymap.set('n', '<leader>ld', '<Cmd>Lazy show<CR>', { desc = '[d]isplay' })
vim.keymap.set('n', '<leader>li', '<Cmd>Lazy install<CR>', { desc = '[i]nstall' })
vim.keymap.set('n', '<leader>lu', '<Cmd>Lazy update<CR>', { desc = '[u]pdate' })
vim.keymap.set('n', '<leader>lc', '<Cmd>Lazy clean<CR>', { desc = '[c]lean' })
vim.keymap.set('n', '<leader>lh', '<Cmd>Lazy health<CR>', { desc = '[h]ealth' })
vim.keymap.set('n', '<leader>ll', '<Cmd>Lazy log<CR>', { desc = '[l]og' })
vim.keymap.set('n', '<leader>lk', '<Cmd>Lazy check<CR>', { desc = 'Chec[k]' })
vim.keymap.set('n', '<leader>ls', '<Cmd>Lazy sync<CR>', { desc = '[s]ync' })

-- Version control keymaps (LazyGit)
-- See [custom/plugins/gitsigns.lua] for other git mappings
vim.keymap.set('n', '<leader>vl', '<Cmd>LazyGit<CR>', { desc = 'Show [L]azyGit' })

-- BUFFER KEYMAPS

vim.keymap.set('n', '<leader>bi', '<Cmd>BufferPin<CR>', { desc = 'P[i]n current buffer' })

-- Buffer navigation
vim.keymap.set('n', '<leader>bp', '<Cmd>BufferPrevious<CR>', { desc = '[p]revious buffer' })
vim.keymap.set('n', '<leader>bn', '<Cmd>BufferNext<CR>', { desc = '[n]ext buffer' })
vim.keymap.set('n', '<leader>bgi', '<Cmd>BufferGotoPinned<CR>', { desc = '[g]oto P[i]nned' })
vim.keymap.set('n', '<leader>bg1', '<Cmd>BufferGoto 1<CR>', { desc = '[g]oto buffer [1]' })
vim.keymap.set('n', '<leader>bg2', '<Cmd>BufferGoto 2<CR>', { desc = '[g]oto buffer [2]' })
vim.keymap.set('n', '<leader>bg3', '<Cmd>BufferGoto 3<CR>', { desc = '[g]oto buffer [3]' })
vim.keymap.set('n', '<leader>bg4', '<Cmd>BufferGoto 4<CR>', { desc = '[g]oto buffer [4]' })
vim.keymap.set('n', '<leader>bg5', '<Cmd>BufferGoto 5<CR>', { desc = '[g]oto buffer [5]' })
vim.keymap.set('n', '<leader>bg6', '<Cmd>BufferGoto 6<CR>', { desc = '[g]oto buffer [6]' })
vim.keymap.set('n', '<leader>bg7', '<Cmd>BufferGoto 7<CR>', { desc = '[g]oto buffer [7]' })
vim.keymap.set('n', '<leader>bg8', '<Cmd>BufferGoto 8<CR>', { desc = '[g]oto buffer [8]' })
vim.keymap.set('n', '<leader>bg9', '<Cmd>BufferGoto 9<CR>', { desc = '[g]oto buffer [9]' })

-- Buffer sorting
vim.keymap.set('n', '<leader>bsn', '<Cmd>BufferOrderByName<CR>', { desc = '[s]ort by [n]ame' })
vim.keymap.set('n', '<leader>bsl', '<Cmd>BufferOrderByLanguage<CR>', { desc = '[s]ort by [l]anguage' })

-- Closing buffers
vim.keymap.set('n', '<leader>bcc', '<Cmd>BufferClose<CR>', { desc = '[c]lose [c]urrent buffer' })
vim.keymap.set('n', '<leader>bco', '<Cmd>BufferCloseAllButCurrent<CR>', { desc = '[c]lose [o]ther buffers' })
vim.keymap.set('n', '<leader>bcl', '<Cmd>BufferCloseBuffersLeft<CR>', { desc = '[c]lose buffers [l]eft' })
vim.keymap.set('n', '<leader>bcr', '<Cmd>BufferCloseBuffersRight<CR>', { desc = '[c]lose buffers [r]ight' })
vim.keymap.set('n', '<leader>bcp', '<Cmd>BufferCloseAllButPinned<CR>', { desc = '[c]lose all but [p]inned' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- nvim-dap keymaps
vim.keymap.set('n', '<leader>xx', "<Cmd>lua require'dap'.toggle_breakpoint()<CR>", { desc = '[x] Toggle breakpoint' })
vim.keymap.set('n', '<leader>xc', "<Cmd>lua require'dap'.continue()<CR>", { desc = '[c]ontinue execution/Start Debugging' })
vim.keymap.set('n', '<leader>xo', "<Cmd>lua require'dap'.step_over()<CR>", { desc = 'Step [o]ver' })
vim.keymap.set('n', '<leader>xi', "<Cmd>lua require'dap'.step_into()<CR>", { desc = 'Step [i]nto' })

-- neo-tree keymaps

-- Toggle neotree with <leader>en
vim.keymap.set('n', '<leader>en', function()
  local reveal_file = vim.fn.expand '%:p'
  if reveal_file == '' then
    reveal_file = vim.fn.getcwd()
  else
    local f = io.open(reveal_file, 'r')
    if f then
      f.close(f)
    else
      reveal_file = vim.fn.getcwd()
    end
    require('neo-tree.command').execute {
      action = 'focus',
      source = 'filesystem',
      postition = 'right',
      reveal_file = reveal_file,
      reveal_force_cwd = true,
      toggle = true,
    }
  end
end, { desc = 'Toggle [n]eotree' })

-- Toggle a terminal with <leader>et
vim.keymap.set('n', '<leader>et', '<Cmd>vs | term<CR>', { desc = 'Open [t]erminal' })

-- Esc clears search highlights in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

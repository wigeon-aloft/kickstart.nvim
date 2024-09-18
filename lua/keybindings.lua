-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Lazy keymaps
vim.keymap.set('n', '<leader>ld', '<Cmd>Lazy show<CR>', { desc = '[L]azy [D]isplay' })
vim.keymap.set('n', '<leader>li', '<Cmd>Lazy install<CR>', { desc = '[L]azy [I]nstall' })
vim.keymap.set('n', '<leader>lu', '<Cmd>Lazy update<CR>', { desc = '[L]azy [U]pdate' })
vim.keymap.set('n', '<leader>lc', '<Cmd>Lazy clean<CR>', { desc = '[L]azy [C]lean' })
vim.keymap.set('n', '<leader>lh', '<Cmd>Lazy health<CR>', { desc = '[L]azy [H]ealth' })
vim.keymap.set('n', '<leader>ll', '<Cmd>Lazy log<CR>', { desc = '[L]azy [L]og' })
vim.keymap.set('n', '<leader>lk', '<Cmd>Lazy check<CR>', { desc = '[L]azy Chec[k]' })
vim.keymap.set('n', '<leader>ls', '<Cmd>Lazy sync<CR>', { desc = '[L]azy [S]ync' })

-- Version control keymaps (LazyGit)
vim.keymap.set('n', '<leader>vg', '<Cmd>LazyGit<CR>', { desc = 'Show Lazy[G]it' })
vim.keymap.set('n', '<leader>vf', '<Cmd>LazyGitFilter<CR>', { desc = 'LazyGit [F]ilter commits' })
vim.keymap.set('n', '<leader>vc', '<Cmd>LazyGitConfig<CR>', { desc = 'LazyGit [C]onfig' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- neo-tree keymaps

-- Toggle neotree with <leader>on
vim.keymap.set('n', '<leader>on', function()
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
end, { desc = 'Toggle [N]eotree' })

-- Esc clears search highlights in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

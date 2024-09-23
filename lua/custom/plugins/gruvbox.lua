-- gruvbox colorscheme
return {
  'morhetz/gruvbox',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  init = function()
    vim.cmd.colorscheme 'gruvbox'
  end,
}

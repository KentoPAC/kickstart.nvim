return {
  {
    'voldikss/vim-floaterm',
    config = function()
      vim.g.floaterm_width = 0.9
      vim.g.floaterm_height = 0.8
      vim.g.floaterm_autoclose = 1
      vim.keymap.set('n', '<leader>h', '<Cmd>FloatermToggle<CR>', { silent = true, desc = 'Toggle Floaterm' })
      vim.keymap.set('t', '<leader>h', '<C-\\><C-n><Cmd>FloatermToggle<CR>', { silent = true, desc = 'Toggle Floaterm' })
    end,
  },
}

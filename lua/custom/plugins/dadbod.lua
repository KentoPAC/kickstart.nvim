return {
  -- Plugin principal dadbod
  {
    'tpope/vim-dadbod',
  },

  -- (Optionnel) Interface utilisateur pour dadbod
  {
    'kristijanhusak/vim-dadbod-ui',
    dependencies = { 'tpope/vim-dadbod' },
    config = function()
      -- Mapping pour ouvrir l'interface dadbod-ui
      vim.keymap.set('n', '<leader>du', ':DBUI<CR>', { desc = 'Ouvrir DBUI' })
    end,
  },

  -- (Optionnel) Auto-complétion SQL pour dadbod
  {
    'kristijanhusak/vim-dadbod-completion',
    dependencies = { 'tpope/vim-dadbod' },
    -- La configuration de la complétion dépend de ton système d'auto-complétion (exemple avec nvim-cmp)
    config = function()
      -- Configuration optionnelle ; consulte la documentation pour plus de détails
    end,
  },
}

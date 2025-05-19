return {
  -- Plugin pour afficher les indentations et les sauts de ligne
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    event = { 'BufReadPost', 'BufNewFile' },
    opts = {
      indent = {
        char = '│', -- Caractère pour les lignes d'indentation
        tab_char = '│', -- Caractère pour les indentations avec tabulations
        highlight = 'LineNr', -- Utilise la couleur de LineNr pour les indentations
        smart_indent_cap = true,
        priority = 2,
      },
      whitespace = {
        -- Active l'affichage des caractères d'espace blanc (dont les sauts de ligne)
        remove_blankline_trail = false,
        highlight = 'NonText',
      },
      scope = {
        enabled = true,
        show_start = true,
        show_end = true,
        highlight = 'Function',
        priority = 500,
      },
      -- Configuration pour les sauts de ligne et autres caractères spéciaux
      -- Note: requiert "listchars" configuré dans Neovim
    },
    config = function(_, opts)
      -- Configure Neovim pour afficher les caractères spéciaux
      vim.opt.list = true
      vim.opt.listchars = {
        eol = '↴', -- Affiche ce caractère à la fin des lignes
        tab = '» ', -- Affiche les tabulations
        trail = '·', -- Affiche les espaces en fin de ligne
        extends = '›', -- Indique que la ligne continue hors écran
        precedes = '‹', -- Indique que la ligne commence hors écran
      }

      -- Charge le plugin avec les options définies
      require('ibl').setup(opts)
    end,
  },
}

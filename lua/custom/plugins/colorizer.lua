return {
  -- High-performance color highlighter
  'norcalli/nvim-colorizer.lua',
  config = function()
    require('colorizer').setup {
      '*', -- Activer pour tous les types de fichiers
      css = { rgb_fn = true }, -- Activer rgba() pour les fichiers CSS
      scss = { rgb_fn = true }, -- Support pour rgba() dans SCSS
    }
  end,
  lazy = false, -- Charger immédiatement (pas en mode lazy)
}

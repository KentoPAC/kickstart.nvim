return {
  {
    'neovim/nvim-lspconfig',
    opts = {
      servers = {
        marksman = {},
      },
    },
  },
  {
    'folke/which-key.nvim',
    optional = true,
    opts = {
      spec = {
        { '<leader>m', group = 'markdown', icon = '' },
      },
    },
  },
  {
    'nvim-treesitter/nvim-treesitter',
    opts = { ensure_installed = { 'markdown', 'markdown_inline' } },
  },
  -- Markdown preview
  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    opts = {
      latex = { enabled = false },
    },
    ft = { 'markdown' },
    keys = {
      {
        '<leader>tm',
        '<cmd>RenderMarkdown toggle<cr>',
        desc = 'Toggle Markdown preview',
      },
    },
  },
}

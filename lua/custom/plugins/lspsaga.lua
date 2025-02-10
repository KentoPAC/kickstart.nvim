return {
  'nvimdev/lspsaga.nvim',
  event = 'BufRead',
  config = function()
    require('lspsaga').setup {
      ui = {
        border = 'rounded',
      },
      lightbulb = {
        enable = true,
        sign = true,
        virtual_text = false,
      },
      symbol_in_winbar = {
        enable = true,
        separator = ' > ',
      },
      code_action = {
        keys = {
          quit = '<ESC>',
          exec = '<CR>',
        },
      },
      rename = {
        in_select = false,
      },
    }
  end,
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-tree/nvim-web-devicons',
  },
}

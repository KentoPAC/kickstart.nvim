return {
  {
    'zbirenbaum/copilot.lua',
    debug = true,
    event = 'InsertEnter',
    config = function()
      require('copilot').setup {
        suggestion = { enabled = true },
        panel = { enabled = true },
      }
    end,
  },
}

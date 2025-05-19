return {
  'nvimtools/none-ls.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    local null_ls = require 'null-ls'

    null_ls.setup {
      debug = true, -- Activer le mode debug pour voir plus d'informations
      sources = {
        -- Python
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
        -- null_ls.builtins.diagnostics.flake8, -- Commenté pour vérifier

        -- Alternative à flake8 pour Python
        null_ls.builtins.diagnostics.pylint,

        -- Lua
        null_ls.builtins.formatting.stylua,

        -- Markdown
        null_ls.builtins.formatting.prettier.with {
          filetypes = { 'markdown', 'json', 'yaml', 'html', 'css', 'scss' },
        },
      },

      -- Format on save
      on_attach = function(client, bufnr)
        if client.supports_method 'textDocument/formatting' then
          vim.api.nvim_create_autocmd('BufWritePre', {
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format {
                bufnr = bufnr,
                filter = function(client)
                  -- Utiliser uniquement null-ls pour le formatage
                  return client.name == 'null-ls'
                end,
              }
            end,
          })
        end
      end,
    }
  end,
}

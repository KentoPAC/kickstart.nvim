return {
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    -- Load on CopilotChat commands to reduce startup memory
    cmd = {
      'CopilotChat',
      'CopilotChatExplain',
      'CopilotChatReview',
      'CopilotChatFix',
      'CopilotChatOptimize',
      'CopilotChatDocs',
      'CopilotChatTests',
      'CopilotChatCommit',
    },
    dependencies = {
      { 'github/copilot.vim' },
      { 'nvim-lua/plenary.nvim', branch = 'master' },
    },
    build = 'make tiktoken', -- Only on MacOS or Linux
    -- Override Node.js memory limit to reduce heap usage
    opts = {
      server_opts_overrides = {
        cmd_env = {
          NODE_OPTIONS = '--max-old-space-size=128',
        },
      },
      show_diff = {
        full_diff = true, -- Enable full diff view for changes
      },
    },
    keys = {
      { '<leader>zc', ':CopilotChat<CR>', mode = 'n', desc = 'Chat with Copilot' },
      { '<leader>ze', ':CopilotChatExplain<CR>', mode = 'v', desc = 'Explain Code' },
      { '<leader>zr', ':CopilotChatReview<CR>', mode = 'v', desc = 'Review Code' },
      { '<leader>zf', ':CopilotChatFix<CR>', mode = 'v', desc = 'Fix Code Issues' },
      { '<leader>zo', ':CopilotChatOptimize<CR>', mode = 'v', desc = 'Optimize Code' },
      { '<leader>zd', ':CopilotChatDocs<CR>', mode = 'v', desc = 'Generate Docs' },
      { '<leader>zt', ':CopilotChatTests<CR>', mode = 'v', desc = 'Generate Tests' },
      { '<leader>zm', ':CopilotChatCommit<CR>', mode = 'n', desc = 'Generate Commit Message' },
      { '<leader>zs', ':CopilotChatCommit<CR>', mode = 'v', desc = 'Generate Commit for Selection' },
    },
  },
}

return {
  'LunarVim/bigfile.nvim',
  event = 'BufReadPre',
  opts = {
    filesize = 2, -- size of the file in MiB, the plugin restricts performance-heavy features for files larger than this
  },
  config = function(_, opts)
    require('bigfile').setup(opts)
  end,
}

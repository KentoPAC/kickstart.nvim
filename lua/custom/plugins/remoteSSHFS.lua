return {
  'nosduco/remote-sshfs.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim' },
  sessions = {
    bdx16 = {
      host = '10.34.164.22',
      user = 'ap4bdx16',
      sshOptions = '-J ap4@chatrie.freeboxos.fr:33333,ap4@localhost:33333',
      remotePath = '.',
      mountPoint = '~/mnt/bdx16',
    },
  },

  opts = {
    -- Refer to the configuration section below
    -- or leave empty for defaults
  },
}

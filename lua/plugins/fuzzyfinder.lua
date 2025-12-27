return {
  'nvim-telescope/telescope.nvim', tag = 'v0.2.0',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    -- Search files by name
    { '<leader>ff', '<cmd>Telescope find_files<cr>', desc = 'Find Files' },
    -- Search for text inside files (requires ripgrep)
    { '<leader>fg', '<cmd>Telescope live_grep<cr>', desc = 'Live Grep' },
    -- Search through open buffers
    { '<leader>fb', '<cmd>Telescope buffers<cr>', desc = 'Buffers' },
    -- Search through help tags
    { '<leader>fh', '<cmd>Telescope help_tags<cr>', desc = 'Help Tags' },
  },
}

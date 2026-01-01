-- ~/.config/nvim/lua/plugins/neotree.lua
return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- Requires a Nerd Font for icons
    "MunifTanjim/nui.nvim",
  },
  keys = {
    -- Press Space + e to toggle the file explorer
    { "<leader>e", ":Neotree toggle left<CR>", desc = "Explorer NeoTree (Left)" },
    -- Press Space + be to see open buffers in a tree view
    { "<leader>be", ":Neotree buffers reveal float<CR>", desc = "Buffer Explorer" },
  },
  opts = {
    filesystem = {
      filtered_items = {
        visible = true, -- Show hidden files
        hide_dotfiles = false,
        hide_gitignored = false,
      },
      follow_current_file = {
        enabled = true, -- Focus file currently being edited
      },
    },
    window = {
      width = 30,
    }
  }
}

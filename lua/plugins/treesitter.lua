-- ~/.config/nvim/lua/plugins/treesitter.lua
return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function() 
      -- We use pcall (protected call) to prevent the error from crashing Neovim
      local status, configs = pcall(require, "nvim-treesitter.configs")
      if not status then 
        return 
      end

      configs.setup({
        ensure_installed = { 
          "lua", "vim", "vimdoc", "python", "javascript", 
          "c", "cpp", "c_sharp", "java" 
        },
        highlight = { 
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        indent = { enable = true },
      })
    end,
  },
}

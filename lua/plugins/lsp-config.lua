return {
  {
    "mason-org/mason.nvim",
    opts = {
      ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
      }
    }
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { 
          "lua_ls",    -- Neovim config
          "clangd",    -- C/C++
          "omnisharp", -- C#
          "jdtls",     -- Java
          "pyright"    -- Python
        },
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason-lspconfig.nvim" },
    config = function()
      -- Define your servers
      local servers = { "clangd", "omnisharp", "jdtls", "lua_ls", "pyright" }
      
      -- The NEW way: enable servers natively without require("lspconfig")
      vim.lsp.enable(servers)

      -- Use an Autocommand to set keymaps only when an LSP attaches to a file
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local opts = { buffer = args.buf }
          
          opts.desc = "LSP Hover"
          vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
          
          opts.desc = "Go to Definition"
          vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
          
          opts.desc = "Code Action"
          vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
        end,
      })
    end,
  }}

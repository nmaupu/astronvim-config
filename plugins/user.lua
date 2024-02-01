return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    event = "User AstroFile",
  },
  {
    "leoluz/nvim-dap-go",
    opts = {},
    -- config = function()
    --   require("dap-go").setup {
    --     dap_configurations = {
    --       {
    --         type = "go",
    --         request = "launch",
    --         name = "Debug - my app",
    --         program = "main.go",
    --         cwd = "${workspaceFolder}",
    --         stopOnEntry = false,
    --         args = {
    --           "--param=1",
    --           "--param=2",
    --         },
    --       },
    --     },
    --   }
    -- end,
    event = "VeryLazy", -- Start plugin when nvim starts
  },
  {
    "theHamsta/nvim-dap-virtual-text",
    dependencies = { "mfussenegger/nvim-dap", "nvim-treesitter/nvim-treesitter" },
    -- config = function()
    --   require("nvim-dap-virtual-text").setup()
    -- end,
    opts = {},
    event = "VeryLazy", -- Start plugin when nvim starts
  },
  { -- generate go tests
    "yanskun/gotests.nvim",
    ft = "go",
    config = function()
      require("gotests").setup()
    end,
  },
  {
    "klen/nvim-test",
    event = "User AstroFile",
    config = function()
      require('nvim-test').setup({
        run = true,
        commands_create = true,
        term = "terminal",
        termOpts = {
          direction = "vertical",
          width = 96,
          height = 24,
          go_back = false,
          stopinsert = "auto",
          keep_one = true,
        },
        runners = {
          go = "nvim-test.runners.go-test",
        }
      })
    end,
  },
  -- "nvim-telescope/telescope-dap.nvim",
  { -- Autocompletion for function parameters on the fly
    "ray-x/lsp_signature.nvim",
    event = "VeryLazy",
    opts = {},
    config = function(_, opts) require'lsp_signature'.setup(opts) end
  },
  {
    "folke/zen-mode.nvim",
    opts = {
      window = {
        width = .9,
        height = 1,
      }
    },
    config = function(_, opts)
      require'zen-mode'.setup(opts)
    end,
  },
}

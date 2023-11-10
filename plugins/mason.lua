-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "lua_ls",
        "ansiblels",
        "arduino_language_server",
        "awk_ls",
        "bashls",
        "cmake",
        "dhall_lsp_server",
        "dockerls",
        "golangci_lint_ls",
        "gopls",
        "hls",
        "helm_ls",
        "jqls",
        "jsonls",
        "pylsp",
        "terraformls",
        "tflint",
        "vimls",
      })
    end,
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "yamllint",
        "typos",
        "tfsec",
        "trivy",
        "staticcheck",
        "semgrep",
        "shellharden",
        "selene",
        "shellcheck",
        "ruff",
        "markdownlint-cli2",
        "jsonlint",
        "golangci-lint",
        "commitlint",
        "codespell",
        "ansible-lint",
        "tflint",
      })
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "bash-debug-adapter",
        "bzl",
        "debugpy",
        "delve",
        "haskell-debug-adapter",
      })
    end,
  },
}

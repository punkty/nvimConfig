return {
  {
    "stevearc/conform.nvim",
    dependencies = { "mason.nvim" },
    lazy = true,  -- Enables lazy loading
    cmd = { "ConformInfo" },  -- Loads when using :ConformInfo
    keys = {
      {
        "<leader>cF",
        function()
          require("conform").format({
            formatters = { "prettier" },  -- Add any specific formatters you need
            timeout_ms = 3000,
          })
        end,
        mode = { "n", "v" },
        desc = "Format with Prettier",
      },
    },
    opts = function()
      return {
        default_format_opts = {
          timeout_ms = 3000,
          async = false,
          quiet = false,
          lsp_format = "fallback",
        },
        formatters_by_ft = {
          lua = { "stylua" },
          typescript = { "prettier" },
          javascript = { "prettier" },
          json = { "prettierd" },
        },
      }
    end,
    config = function(_, opts)
      require("conform").setup(opts)  -- Ensures conform is configured with your opts
    end,
  }
}


-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
  theme = "chadracula",
}

M.mappings = require "custom.mappings"

M.plugins = {
  user = require "custom.plugins",
  override = {
    ["nvim-telescope/telescope.nvim"] = {
      extensions_list = { "fzf", "themes", "terms" },
      extensions = {
        fzf = {
          fuzzy = true, -- false will only do exact matching
          override_generic_sorter = true, -- override the generic sorter
          override_file_sorter = true, -- override the file sorter
          case_mode = "ignore_case", -- or "ignore_case" or "respect_case"
          -- the default case_mode is "smart_case"
        },
      },
      defaults = {
        layout_strategy = "horizontal",
        layout_config = {},
      },
    },
    ["nvim-treesitter.configs"] = {
      ensure_installed = { "all" },
    },
    ["hrsh7th/nvim-cmp"] = {
      sources = {
        -- { name = "luasnip" },
        { name = "nvim_lsp" },
        -- { name = "buffer" },
        -- { name = "nvim_lua" },
        { name = "path" },
      },
      ["neovim/nvim-lspconfig"] = {
        config = function()
          require "plugins.configs.lspconfig"
          require "custom.plugins.lspconfig"
        end,
      },
    },
  },
}

return M

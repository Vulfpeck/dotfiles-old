-- lua/custom/mappings
local M = {}

-- add this table only when you want to disable default keys
M.disabled = {}

M.abc = {

  n = {
    ["<leader>fr"] = {
      function()
        require("telescope.builtin").resume()
      end,
      "Resume Telescope",
    },
    ["<leader>fb"] = {
      function()
        require("telescope.builtin").buffers()
      end,
      "Open Buffers",
    },
    ["<leader>oi"] = {
      function()
        vim.lsp.buf.code_action { context = { only = { "source.organizeImports" } }, apply = true }
      end,
      "Organize Imports",
    },
    ["<leader>lg"] = {
      ":LazyGit <CR>",
      "Lazy Git",
    },
    ["<C-`>"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "toggle floating term",
    },
  },

  i = {
    -- more keys!
    ["<C-`>"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "toggle floating term",
    },
  },

  t = {
    ["<C-`>"] = {
      function()
        require("nvterm.terminal").toggle "vertical"
      end,
      "toggle floating term",
    },
  },
}

M.xyz = {
  -- stuff
}

return M

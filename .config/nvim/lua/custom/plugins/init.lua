return {
  ["nvim-telescope/telescope-fzf-native.nvim"] = {
    run = "make",
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null_ls_config"
    end,
  },
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  ["folke/which-key.nvim"] = { disable = false },
  ["mg979/vim-visual-multi"] = {},
  ["kdheepak/lazygit.nvim"] = {},
}

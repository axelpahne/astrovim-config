return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- colorscheme
  { import = "astrocommunity.colorscheme.nightfox" },

  -- autocompletion
  { import = "astrocommunity.completion.copilot-lua-cmp" },

  -- editor rulers
  { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },
  {
    "m4xshen/smartcolumn.nvim",
    opts = {
      colorcolumn = { 80, 100 },
      disabled_filetypes = { "help" },
    },
  },
}

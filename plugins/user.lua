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

  -- Code snippets
  {
    "L3MON4D3/LuaSnip",
    event = "User AstroFile",
    config = function()
      local luasnip = require "luasnip"

      luasnip.setup {
        -- This tells LuaSnip to remember to keep around the last snippet.
        -- You can jump back into it even if you move outside of the selection
        history = true,
        -- Update more often, :h events for more info.
        updateevents = "TextChanged,TextChangedI",
      }

      -- <C-s> is my expansion key
      -- This will expand the current item or jump to the next item within the snippet.
      vim.keymap.set({ "i", "s" }, "<C-s>", function()
        if luasnip.expand_or_jumpable() then luasnip.expand_or_jump() end
      end, { silent = true })

      require("luasnip/loaders/from_vscode").load {
        paths = { "~/.config/nvim/lua/user/vsc-snippets" },
      }
    end,
  },

  -- Git commands inside vim
  { "tpope/vim-fugitive", lazy = false },
  { "tpope/vim-rhubarb", event = "User AstroGitFile" },

  -- Delete/change/add parentheses/quotes/XML-tags/much more with ease
  { "tpope/vim-surround", event = "User AstroFile" },

  -- Additional powerful text objects
  { "wellle/targets.vim", event = "User AstroFile" },

  -- Smooth scrolling
  {
    "karb94/neoscroll.nvim",
    event = "User AstroFile",
    opts = {},
  },

  -- Highlight, list and search todo comments in your projects
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "User AstroFile",
    cmd = { "TodoQuickFix" },
    keys = {
      { "<leader>T", "<cmd>TodoTelescope<cr>", desc = "Open TODOs in Telescope" },
    },
    opts = {},
  },
}

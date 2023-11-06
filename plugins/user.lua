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
    lazy = false,
      opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
  },
  -- {
  --   "karb94/neoscroll.nvim",
  --   lazy = false
  -- },
  {
    "psliwka/vim-smoothie",
    lazy = false
  },
  {
    "lambdalisue/suda.vim",
    lazy = false
  },
  {
    'lervag/vimtex',
    lazy = false
  },
  {
    'donRaphaco/neotex',
    ft = "tex"
  },
  {
    'declancm/cinnamon.nvim',
    config = function()
      require("cinnamon").setup()
    end,
  },
  { 
    'luckasRanarison/tree-sitter-hypr',
    ft = "conf"
  },
  {
    "gelguy/wilder.nvim",
    keys = { "/", "?", ":" },
    build = ":UpdateRemotePlugins"
  },
  -- {
  --   "zbirenbaum/copilot.lua",
  --   cmd = "Copilot",
  --   event = "InsertEnter",
  --   config = function()
  --     require("copilot").setup({})
  --   end,
  -- }
  -- {
  --   "epwalsh/obsidian.nvim",
  --   lazy = false,
  --   event = {
  --     -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --     -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
  --     "BufReadPre path/to/my-vault/**.md",
  --     "BufNewFile path/to/my-vault/**.md",
  --   },
  --   dependencies = {
  --     -- Required.
  --     "nvim-lua/plenary.nvim",
  --
  --     -- see below for full list of optional dependencies 👇
  --   },
  --   -- Optional, completion.
  --   completion = {
  --     -- If using nvim-cmp, otherwise set to false
  --     nvim_cmp = true,
  --     -- Trigger completion at 2 chars
  --     min_chars = 2,
  --     -- Where to put new notes created from completion. Valid options are
  --     --  * "current_dir" - put new notes in same directory as the current buffer.
  --     --  * "notes_subdir" - put new notes in the default notes subdirectory.
  --     new_notes_location = "current_dir",
  --
  --     -- Whether to add the output of the node_id_func to new notes in autocompletion.
  --     -- E.g. "[[Foo" completes to "[[foo|Foo]]" assuming "foo" is the ID of the note.
  --     prepend_note_id = true
  --   },
  --   
  --   opts = {
  --     workspaces = {
  --       {
  --         name = "neural_nexus",
  --         path = "~/Documents/neural_nexus/",
  --       },
  --     },
  --
  --   },
  -- },
}

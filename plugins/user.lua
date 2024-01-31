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
  {
    "phaazon/hop.nvim",
    lazy = false,
    config = function()
     require("hop").setup { keys = 'etovxqpdygfblzhckisuran' }
    end,
  },
  -- {
  --   "karb94/neoscroll.nvim",
  --   lazy = false
  -- },
  -- {
  --   "psliwka/vim-smoothie",
  --   lazy = false
  -- },
  {
    "lambdalisue/suda.vim",
    lazy = false
  },
  {
    'lervag/vimtex',
    lazy = false,
  },
  -- {
  --   'frabjous/knap',
  -- },
  {
    'donRaphaco/neotex',
    ft = "tex"
  },
  {
    "gaoDean/autolist.nvim",
    ft = {
        "markdown",
        "text",
        "tex",
        "plaintex",
        "norg",
    },
    config = function()
        require("autolist").setup()

        vim.keymap.set("i", "<tab>", "<cmd>AutolistTab<cr>")
        vim.keymap.set("i", "<s-tab>", "<cmd>AutolistShiftTab<cr>")
        -- vim.keymap.set("i", "<c-t>", "<c-t><cmd>AutolistRecalculate<cr>") -- an example of using <c-t> to indent
        vim.keymap.set("i", "<CR>", "<CR><cmd>AutolistNewBullet<cr>")
        vim.keymap.set("n", "o", "o<cmd>AutolistNewBullet<cr>")
        vim.keymap.set("n", "O", "O<cmd>AutolistNewBulletBefore<cr>")
        vim.keymap.set("n", "<CR>", "<cmd>AutolistToggleCheckbox<cr><CR>")

        -- cycle list types with dot-repeat
        vim.keymap.set("n", "<leader>cn", require("autolist").cycle_next_dr, { expr = true })
        vim.keymap.set("n", "<leader>cp", require("autolist").cycle_prev_dr, { expr = true })

        -- if you don't want dot-repeat
        -- vim.keymap.set("n", "<leader>cn", "<cmd>AutolistCycleNext<cr>")
        -- vim.keymap.set("n", "<leader>cp", "<cmd>AutolistCycleNext<cr>")

        -- functions to recalculate list on edit
        vim.keymap.set("n", ">>", ">><cmd>AutolistRecalculate<cr>")
        vim.keymap.set("n", "<<", "<<<cmd>AutolistRecalculate<cr>")
        vim.keymap.set("n", "dd", "dd<cmd>AutolistRecalculate<cr>")
        vim.keymap.set("v", "d", "d<cmd>AutolistRecalculate<cr>")
    end,
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
  {
    "luckasRanarison/tree-sitter-hypr"
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },
  -- {
  --   "gaoDean/autolist.nvim",
  --   ft = {
  --       "markdown",
  --       "text",
  --       "tex",
  --       "plaintex",
  --       "norg",
  --   },
  --   config = function()
  --       require("autolist").setup()
  --
  --       vim.keymap.set("i", "<tab>", "<cmd>AutolistTab<cr>")
  --       vim.keymap.set("i", "<s-tab>", "<cmd>AutolistShiftTab<cr>")
  --       -- vim.keymap.set("i", "<c-t>", "<c-t><cmd>AutolistRecalculate<cr>") -- an example of using <c-t> to indent
  --       vim.keymap.set("i", "<CR>", "<CR><cmd>AutolistNewBullet<cr>")
  --       vim.keymap.set("n", "o", "o<cmd>AutolistNewBullet<cr>")
  --       vim.keymap.set("n", "O", "O<cmd>AutolistNewBulletBefore<cr>")
  --       vim.keymap.set("n", "<CR>", "<cmd>AutolistToggleCheckbox<cr><CR>")
  --       vim.keymap.set("n", "<C-r>", "<cmd>AutolistRecalculate<cr>")
  --
  --       -- cycle list types with dot-repeat
  --       vim.keymap.set("n", "<leader>cn", require("autolist").cycle_next_dr, { expr = true })
  --       vim.keymap.set("n", "<leader>cp", require("autolist").cycle_prev_dr, { expr = true })
  --
  --       -- if you don't want dot-repeat
  --       -- vim.keymap.set("n", "<leader>cn", "<cmd>AutolistCycleNext<cr>")
  --       -- vim.keymap.set("n", "<leader>cp", "<cmd>AutolistCycleNext<cr>")
  --
  --       -- functions to recalculate list on edit
  --       vim.keymap.set("n", ">>", ">><cmd>AutolistRecalculate<cr>")
  --       vim.keymap.set("n", "<<", "<<<cmd>AutolistRecalculate<cr>")
  --       vim.keymap.set("n", "dd", "dd<cmd>AutolistRecalculate<cr>")
  --       vim.keymap.set("v", "d", "d<cmd>AutolistRecalculate<cr>")
  --   end,
  -- },
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

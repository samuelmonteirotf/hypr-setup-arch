require("lazy").setup({
  -- Tema
  { "sainnhe/gruvbox-material", priority = 1000 },

  -- LSP e autocompletar
  { "neovim/nvim-lspconfig" },
  { "williamboman/mason.nvim", config = true },
  { "hrsh7th/nvim-cmp",
    dependencies = { "hrsh7th/cmp-nvim-lsp", "L3MON4D3/LuaSnip" }
  },

  -- Treesitter
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  -- Fuzzy finder
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },

  -- Git
  { "lewis6991/gitsigns.nvim", config = true },

  -- Status bar
  { "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({
        options = { theme = "gruvbox-material", section_separators = "", component_separators = "" }
      })
    end
  },

  -- Which-key (ajuda de atalhos)
  { "folke/which-key.nvim", config = true },
})


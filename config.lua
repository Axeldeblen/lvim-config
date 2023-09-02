reload("axel.options")
reload("axel.plugins/harpoon")
reload("axel.plugins/whichkey")
reload("axel.remap")
lvim.colorscheme = "kanagawa"
lvim.plugins = {
  { "rebelot/kanagawa.nvim" },
  { "sindrets/diffview.nvim" },
  { "tpope/repeat" },
  { "tpope/unimpaired" },
  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end,
  },
  {
    "pwntester/octo.nvim",
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require "octo".setup()
    end
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "kdheepak/lazygit.nvim",
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  { "sheerun/vim-polyglot" },
  { "ThePrimeagen/vim-be-good" },
  { "evanleck/vim-svelte" },
  { "prettier/vim-prettier" },
  { "sbdchd/neoformat" },
  { "nvim-tree/nvim-web-devicons" },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required
      {                            -- Optional
        'williamboman/mason.nvim',
        build = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },     -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'L3MON4D3/LuaSnip' },     -- Required
    }
  },
  { "preservim/nerdcommenter" }, { "smartpde/telescope-recent-files" },
  { "thePrimeagen/harpoon" },
  { "github/copilot.vim" }
}

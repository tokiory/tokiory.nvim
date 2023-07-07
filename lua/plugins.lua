--[[
File: plugins.lua
Description: This file needed for loading plugin list into lazy.nvim and loading plugins
Info: Use <zo> and <zc> to open and close foldings
See: https://github.com/wbthomason/packer.nvim
]]

require "helpers/globals"

return {
  -- Search and replace {{{
  {
    'nvim-pack/nvim-spectre',
    dependencies = {
      'nvim-lua/plenary.nvim'
    },
    config = function ()
      require 'extensions.spectre'
    end,
  },
  -- }}}

  -- Mason {{{
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
      require "extensions.mason"
    end
  },
  -- }}}

  -- Telescope {{{
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "ahmedkhalf/project.nvim",
    },
    config = function()
      require "extensions.telescope"
    end
  },
  -- }}}

  -- Nvim Tree{{{
  {
    'nvim-tree/nvim-tree.lua',
    config = function ()
      require('extensions.nvimtree')
    end,
  },
  -- }}}

  -- CMP {{{
  {
    'hrsh7th/nvim-cmp',
    event = "InsertEnter",
    dependencies = {
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-emoji',
      'hrsh7th/cmp-nvim-lsp-signature-help',
      'hrsh7th/cmp-nvim-lua',
      'rafamadriz/friendly-snippets',
    },
    config = function()
      require "extensions.cmp"
    end
  },
  -- }}}

  -- LSP Kind {{{
  {
    'onsails/lspkind-nvim',
    lazy = true,
    config = function()
      require "extensions.lspkind"
    end
  },
  -- }}}

  -- Git Signs{{{
  {
    'lewis6991/gitsigns.nvim',
    lazy = false,
    config = function()
      require "extensions.gitsigns"
    end
  },
  -- }}}

  -- Diff View {{{ 
  {
    'sindrets/diffview.nvim',
    config = true,
  },
  --}}}

  -- Trouble {{{
  {
    "folke/trouble.nvim",
    lazy = true,
    dependencies = "kyazdani42/nvim-web-devicons",
    config = function()
      require "extensions.trouble"
    end,
  },
  -- }}}

  -- TreeSitter {{{
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require "extensions.treesitter"
    end
  },
  -- }}}

  -- Todo Comments {{{
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = true,
  },
  -- }}}

  -- Mini.nvim {{{
  { 'echasnovski/mini.surround', version = false, config = true, },
  { 'echasnovski/mini.comment',  version = false, config = true, },
  { 'echasnovski/mini.pairs',    version = false, config = true, },
  -- }}}

  -- Theme: Sonokai {{{
  {
    "sainnhe/sonokai",
    lazy = false,
    config = function()
      require "extensions.colorscheme.sonokai"
    end
  },
  -- }}}

  -- Theme: Kanagawa {{{
  {
    'rebelot/kanagawa.nvim',
    lazy = false,
    config = function()
      require 'extensions.colorscheme.kanagawa'
    end
  },
  -- }}}

  -- Wakatime {{{ 
  {
    'wakatime/vim-wakatime',
  }
  -- }})
}

-- vim:tabstop=2 shiftwidth=2 expandtab syntax=lua foldmethod=marker foldlevelstart=0 foldlevel=0

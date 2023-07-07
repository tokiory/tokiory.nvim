<p align="center">
    <img src="https://github.com/Travel-CLI/tokiory.nvim/assets/101672047/4f8a0e65-c76d-42ae-9c95-9c250a490857" width="264" />
    <h1 align="center">Tokiory.nvim</h1>
</p>

This is one part of Travel CLI configuration pack. This repo contains configuration files for neovim.

# Structure

```
.
├── init.lua                  -- Entry point
├── init.sh                   -- Script for installation side-software (aka packer)
│
├── lua
│  ├── extensions             -- Plugin configurations
│  │
│  ├── helpers
│  │  ├── globals.lua         -- Global variables (aliases)
│  │  └── keyboard.lua        -- Keyboard helper functions
│  │
│  ├── keybindings.lua        -- Keyboard mappings
│  ├── plugins.lua            -- Plugin initialization via Packer
│  └── settings.lua           -- Settings for neovim
└── README.md
```

# Packed Plugins

- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [mason.nvim](https://github.com/williamboman/mason.nvim)
- [neo-tree](https://github.com/nvim-tree/nvim-tree.lua)
- [telescope](https://github.com/nvim-telescope/telescope.nvim)
- [cmp](https://github.com/hrsh7th/nvim-cmp)
- [lspkind](https://github.com/onsails/lspkind.nvim)
- [Git Signs](https://github.com/lewis6991/gitsigns.nvim)
- [trouble.nvim](https://github.com/folke/trouble.nvim)
- [Tree Sitter](https://github.com/tree-sitter/tree-sitter)
- [tokyo-dark](https://github.com/tiagovla/tokyodark.nvim)

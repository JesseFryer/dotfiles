local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    -- Colourschemes
    "ellisonleao/gruvbox.nvim",
    "folke/tokyonight.nvim",
    "rebelot/kanagawa.nvim",
    "NLKNguyen/papercolor-theme",

    -- Zen mode
    {
        "folke/zen-mode.nvim",
        opts = {
            window = {
                backdrop = 0.95, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
                -- height and width can be:
                -- * an absolute number of cells when > 1
                -- * a percentage of the width / height of the editor when <= 1
                -- * a function that returns the width or the height
                width = 0.6, -- width of the Zen window
                height = 1, -- height of the Zen window
                -- by default, no options are changed for the Zen window
                -- uncomment any of the options below, or add other vim.wo options you want to apply
                options = {
                    -- signcolumn = "no", -- disable signcolumn
                    -- number = false, -- disable number column
                    -- relativenumber = false, -- disable relative numbers
                    -- cursorline = false, -- disable cursorline
                    -- cursorcolumn = false, -- disable cursor column
                    -- foldcolumn = "0", -- disable fold column
                    -- list = false, -- disable whitespace characters
                }
            }
        }
    },

    -- Transparent backround
    "xiyaowong/transparent.nvim",

    -- File tree
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("nvim-tree").setup {}
        end
    },

    -- Telescope
    {
        "nvim-telescope/telescope.nvim", 
        branch = "0.1.x",
        dependencies = { "nvim-lua/plenary.nvim" }
    },

    -- Lsp config
    "neovim/nvim-lspconfig"
}

local opts = {}

require("lazy").setup(plugins, opts)

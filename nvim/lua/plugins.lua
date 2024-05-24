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
    "Mofiqul/dracula.nvim",
    "neanias/everforest-nvim",
    "rose-pine/neovim",
    "blazkowolf/gruber-darker.nvim",
    "xero/miasma.nvim",

    "nvim-treesitter/nvim-treesitter",

    -- Extra comments like todos and whatnot
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    },

    -- Markdown viewer
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
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

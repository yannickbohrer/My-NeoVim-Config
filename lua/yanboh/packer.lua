-- This file can be loaded by calling `lua require('plugins')` from your init.

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use('wbthomason/packer.nvim')

    -- lua integration (?)
    use('nvim-lua/plenary.nvim')

    -- telescope
    use({
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    })

    -- treesitter
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')
    use('windwp/nvim-ts-autotag')
    use('mrjones2014/nvim-ts-rainbow')

    -- undotree
    use('mbbill/undotree')

    -- formatting
    use('jose-elias-alvarez/null-ls.nvim')

    -- filetree
    use({
        'nvim-tree/nvim-tree.lua',
        lazy = false,
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
    })
    use('nvim-tree/nvim-web-devicons')

    -- harpoon
    use('ThePrimeagen/harpoon')

    -- bufferline
    use({ 'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons' })

    -- mason
    use("williamboman/mason.nvim")
    use("williamboman/mason-lspconfig.nvim")

    -- lsp
    use({
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },      -- Required
            { 'hrsh7th/cmp-nvim-lsp' },  -- Required
            { 'L3MON4D3/LuaSnip' },      -- Required
        }
    })

    -- which key
    use({
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end
    })

    -- git
    use('mhinz/vim-signify')

    -- lualine
    use({
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    })

    -- comment
    use({ 'numToStr/Comment.nvim', })

    -- terminal integration
    use({
        "akinsho/toggleterm.nvim",
        tag = '*',
        config = function()
            require("toggleterm").setup()
        end
    })

    -- colorschemes
    use({ "catppuccin/nvim", as = "catppuccin" })
    use({
        "rebelot/kanagawa.nvim",
        as = "kanagawa",
        config = function()
            vim.cmd('colorscheme kanagawa')
        end
    })
    use({ 'JoosepAlviste/palenightfall.nvim' })
    use({
        "navarasu/onedark.nvim",
        as = "onedark"
    })
    -- use({ 'rose-pine/neovim', as = 'rose-pine' })
    use({ "EdenEast/nightfox.nvim" })
    use({
        'folke/tokyonight.nvim',
        as = "tokyonight",
    })
    use({ "savq/melange-nvim" })
    use({ 'sainnhe/sonokai' })

    -- be good hehe
    use({ "ThePrimeagen/vim-be-good" })
end)

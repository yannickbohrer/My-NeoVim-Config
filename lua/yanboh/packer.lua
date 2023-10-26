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
    --use('mrjones2014/nvim-ts-rainbow')

    -- undotree
    use('mbbill/undotree')

    -- formatting
    use('jose-elias-alvarez/null-ls.nvim')

    -- debugger
    --[[
    use('mfussenegger/nvim-dap')
    use('leoluz/nvim-dap-go')
    use({
        "rcarriga/nvim-dap-ui",
        requires = { "mfussenegger/nvim-dap" }
    })
    use('theHamsta/nvim-dap-virtual-text')
    use('nvim-telescope/telescope-dap.nvim')

    use('folke/neodev.nvim')
    --]]

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

    -- lsp
    use({
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {
                -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    })
    use({ 'scalameta/nvim-metals', requires = { "nvim-lua/plenary.nvim" } })
    -- use({'mfussenegger/nvim-jdtls'})

    -- which key
    use({
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    })

    -- git
    use('tpope/vim-fugitive')
    use('mhinz/vim-signify')
    use('tpope/vim-rhubarb')
    use('junegunn/gv.vim')

    -- lualine
    use({
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    })

    -- comment
    use({
        'numToStr/Comment.nvim',
        --[[config = function()
            require('Comment').setup()
        end--]]
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
    use('JoosepAlviste/palenightfall.nvim')
    use({
        "navarasu/onedark.nvim",
        as = "onedark"
    })
    -- use({ 'rose-pine/neovim', as = 'rose-pine' })
    use("EdenEast/nightfox.nvim")
    use({
        'folke/tokyonight.nvim',
        as = "tokyonight",
    })
    use("savq/melange-nvim")
    use('sainnhe/sonokai')
end)

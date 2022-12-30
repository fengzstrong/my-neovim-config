local packer = require("packer")
packer.startup({
  function(use)
    -- packer 可以升级自己
    use("wbthomason/packer.nvim")
    --------------------- colorschemes --------------------
    -- tokyonight
    use("folke/tokyonight.nvim")
    --------------------- plugins -------------------------
    -- nvim-tree
    use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
    -- bufferline
    use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" } })
    -- lualine
    use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
    use("arkav/lualine-lsp-progress")
    -- treesitter
    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
    --------------------- LSP -----------------------------
    -- https://github.com/williamboman/mason-lspconfig.nvim
    use({
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
    })
    -- 补全引擎
    use("hrsh7th/nvim-cmp")
    -- snippet 引擎
    use("hrsh7th/vim-vsnip")
    -- 补全源
    use("hrsh7th/cmp-vsnip")
    use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
    use("hrsh7th/cmp-buffer")   -- { name = 'buffer' }
    use("hrsh7th/cmp-path")     -- { name = 'path' }
    use("hrsh7th/cmp-cmdline")  -- { name = 'cmdline' }
    -- 常见编程语言代码段
    use("rafamadriz/friendly-snippets")
    -- ui
    -- use("glepnir/lspsaga.nvim")
    use("tami5/lspsaga.nvim")
    -- 代码格式化
    -- use("mhartington/formatter.nvim")
    use({ "jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" })
    -- json增强
    use("b0o/schemastore.nvim")
    -- ts and js
    use({ "jose-elias-alvarez/nvim-lsp-ts-utils", requires = "nvim-lua/plenary.nvim" })
  end,
  config = {
    display = {
      open_fn = function()
        return require("packer.util").float({ border = "single" })
      end,
    },
  },
})

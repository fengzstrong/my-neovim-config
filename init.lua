require('basic')
require('keybindings')
-- Packer 插件管理
require('plugins')
-- 主题设置
require('colorscheme')
-- 插件配置
require('plugin-config.nvim-tree')
require("plugin-config.bufferline")
require("plugin-config.lualine")
require("plugin-config.nvim-treesitter")
-- 内置LSP
require("lsp.setup")
require("lsp.cmp")
require("lsp.ui")
require("lsp.null-ls")

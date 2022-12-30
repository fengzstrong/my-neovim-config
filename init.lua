require('basic')
require('keybindings')
-- packer 插件管理
require('plugins')
-- 主题设置
require('colorscheme')
-- 插件配置
require('plugin_config.nvim_tree')
require("plugin_config.bufferline")
require("plugin_config.lualine")
require("plugin_config.nvim_treesitter")
-- lsp
require("lsp.setup")
require("lsp.cmp")
require("lsp.ui")
-- require("lsp.null_ls")

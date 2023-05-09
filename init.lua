require('basic')
require('keybindings')
-- packer 插件管理
require('plugins')
-- 主题设置
require('colorscheme')
-- 插件配置
require('plugin.nvim_tree_')
require("plugin.bufferline")
require("plugin.lualine")
require("plugin.nvim_treesitter")
-- lsp
require("lsp.setup")
require("lsp.cmp")
require("lsp.ui")
-- require("lsp.null_ls")

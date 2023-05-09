require("nvim-tree").setup {
  sort_by = "case_sensitive",
  hijack_cursor = true,
  system_open = {
    cmd = "open",
  },
  view = {
    width = 32,
    adaptive_size = true,
  },
  -- renderer = {
  --   group_empty = true,
  --   icons = {
  --     show = {
  --       git = true,
  --       file = false,
  --       folder = false,
  --       folder_arrow = true,
  --     },
  --     glyphs = {
  --       bookmark = " ",
  --       folder = {
  --         arrow_closed = "⏵",
  --         arrow_open = "⏷",
  --       },
  --       git = {
  --         unstaged = "✗",
  --         staged = "✓",
  --         unmerged = "⌥",
  --         renamed = "➜",
  --         untracked = "★",
  --         deleted = "⊖",
  --         ignored = "◌",
  --       },
  --     },
  --   },
  -- },
  filters = {
    dotfiles = false,
  },
}

-- 启动时打开
vim.api.nvim_create_autocmd(
  { "VimEnter" },
  {
    callback = function()
      vim.cmd("NvimTreeToggle")
    end,
  }
)

-- 自动关闭
vim.api.nvim_create_autocmd(
  { "QuitPre" },
  {
    callback = function()
      vim.cmd("NvimTreeClose")
    end,
  }
)

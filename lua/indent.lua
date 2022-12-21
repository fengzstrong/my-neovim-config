local function handle_indent(indent_size)
  -- 缩进2个空格等于一个Tab
  vim.o.tabstop = indent_size
  vim.bo.tabstop = indent_size
  vim.o.softtabstop = indent_size
  vim.o.shiftround = true
  -- >> << 时移动长度
  vim.o.shiftwidth = indent_size
  vim.bo.shiftwidth = indent_size
  -- 空格替代tab
  vim.o.expandtab = true
  vim.bo.expandtab = true
  -- 新行对齐当前行
  vim.o.autoindent = true
  vim.bo.autoindent = true
  vim.o.smartindent = true
end

handle_indent(2)

local set_indent_size = function()
  handle_indent(4)
end

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  pattern = { "*.c", "*.h", "*.go", "*.py", "*.cpp" },
  callback = set_indent_size
})


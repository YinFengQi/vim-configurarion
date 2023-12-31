local opt = vim.opt

-- 行号
opt.relativenumber = true
opt.number = true

-- 缩进
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- 防止包裹
opt.wrap = true 

-- 光标行
opt.cursorline = true

-- 启用鼠标
opt.mouse:append("a")

-- 系统剪贴板
opt.clipboard:append("unnamedplus")

--默认新窗口右侧和下方
opt.splitright = true
opt.splitbelow = true

-- 搜索
opt.ignorecase = true
opt.smartcase = true

-- 外观
opt.termguicolors = true 
opt.signcolumn = "yes"

-- 主题
require("tokyonight").setup({
  transparent = false,
--  Normal = { fg = theme.colors.fg, bg = options.transparent and c.none or c.bg },
})
vim.cmd[[colorscheme tokyonight]]

-- 以管理员权限保存
vim.cmd[[let g:suda_smart_edit = 1]]


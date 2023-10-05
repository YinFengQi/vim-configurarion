vim.g.mapleader = " "
 local keymap = vim.keymap

----- 插入模式 -----
keymap.set("i", "jj", "<ESC>")

----- 视觉模式 -----
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

----- 正常模式 -----
--取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- 切换buffer
keymap.set("n", "L", ":bnext<CR>")
keymap.set("n", "H", ":bprevious<CR>")
keymap.set("n", "<leader>x", ":bdelete | bprevious<CR>")



----- 插件 -----
-- nvim-tree
keymap.set("", "<C-n>", ":NvimTreeToggle<CR>")

-- vim-tex
keymap.set("n", "<leader>ll", ":VimtexCompile<CR>")

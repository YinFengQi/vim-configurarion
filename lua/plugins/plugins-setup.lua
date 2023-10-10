local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()
-- 下面这几行用于保存后自动安装插件
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'


-------------------------------------------------------------
--- 以下是我自己使用的插件
  use 'folke/tokyonight.nvim' -- 主题

  use {
    'nvim-lualine/lualine.nvim', -- 状态栏
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use {
    'nvim-tree/nvim-tree.lua', -- 文件树
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
  }

  use('christoomey/vim-tmux-navigator')

  use "numToStr/Comment.nvim" -- gcc和gc注释
  use "windwp/nvim-autopairs" -- 自动补全括号

  use "akinsho/bufferline.nvim" -- buffer分割线
  use "lewis6991/gitsigns.nvim" -- 左则git提示

  use "lervag/vimtex" -- tex插件
  use "sirver/ultisnips" -- snippet插件
  use "lambdalisue/suda.vim" -- 可以以管理员权限保存的插件
  -- My plugins here
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'

  -- Automatically set up your configuration after cloning packer.nvim

  
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

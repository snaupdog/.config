-- auto install packer if not installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
  return
end

return packer.startup(function(use)



    use 'wbthomason/packer.nvim'

    use 'folke/tokyonight.nvim'

    -- lsp

    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",}

    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'L3MON4D3/LuaSnip'
    use  'saadparwaiz1/cmp_luasnip'
    use  "rafamadriz/friendly-snippets"


   -- terminal toggle
   use 'kylechui/nvim-surround'
   use 's1n7ax/nvim-terminal'
   use "windwp/nvim-autopairs"
   use 'numToStr/Comment.nvim'
   use 'nvim-lualine/lualine.nvim'
   use 'nvim-treesitter/nvim-treesitter'
   use 'nvim-telescope/telescope.nvim'
   use 'nvim-tree/nvim-web-devicons'
   use 'nvim-tree/nvim-tree.lua'





  
  if packer_bootstrap then
    require('packer').sync()
  end
end)
-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.g.termguicolors = true
-- empty setup using defaults

-- OR setup with some options
require("nvim-tree").setup({

--nvim-tree.view.preserve_window_proportions=true,
  -- sort_by = {"modification_time"},
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },

       --
       -- requires = {
       --     'nvim-tree/nvim-web-devicons', -- optional
       -- },
})



-- vim.keymap.set('n','<C-n>',':NvimTreeToggle<CR>')

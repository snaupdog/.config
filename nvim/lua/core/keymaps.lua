-- vim.opt.guicursor = ""

vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors =true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.splitright = true -- split vertical window to the right
vim.opt.splitbelow = true -- split horizontal window to the bottom

--vim.opt.colorcolumn = "100"


 -- vim.cmd[[colorscheme abscs]]

 vim.cmd[[colorscheme tokyonight-night]]



vim.g.mapleader = " "


vim.keymap.set('n','<leader>n',':NvimTreeToggle<CR>')

vim.keymap.set('n','<leader>w','<C-w>w')




local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>]', builtin.find_files, {})

local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

-- Better escape using jk in insert and terminal mode
keymap("i", "jk", "<ESC>", default_opts)
keymap("t", "jk", "<C-\\><C-n>", default_opts)


-- Resizing panes
keymap("n", "<Left>", ":vertical resize +1<CR>", default_opts)
keymap("n", "<Right>", ":vertical resize -1<CR>", default_opts)
keymap("n", "<Up>", ":resize -1<CR>", default_opts)
keymap("n", "<Down>", ":resize +1<CR>", default_opts)





























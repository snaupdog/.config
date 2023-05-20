local builtin = require('telescope.builtin')

-- vim.keymap.set('n', '<leader>]', builtin.find_files, {})

require('telescope').setup{
    tag='0.1.1',

    requires = { {'nvim-lua/plenary.nvim'} }
}

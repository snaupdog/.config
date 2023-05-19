-- following option will hide the buffer when it is closed instead of deleting
-- the buffer. This is important to reuse the last terminal buffer
-- IF the option is not set, plugin will open a new terminal every single time
vim.o.hidden = true

require('nvim-terminal').setup({
    -- window = {
    --     -- Do `:h :botright` for more information
    --     -- NOTE: width or height may not be applied in some "pos"
    --     position = 'botright',
    --
    --     -- Do `:h split` for more information
    --     split = 'sp',
    --
    --     -- Width of the terminal
    --     width = 50,
    --
    --     -- Height of the terminal
    --     height = 15,
    -- },

       config = function()
           vim.o.hidden = true
           require('nvim-terminal').setup()
       end,
})

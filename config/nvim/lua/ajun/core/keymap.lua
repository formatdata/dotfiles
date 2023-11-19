local builtin = require('telescope.builtin')

-- Telescope
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- NvimTree
vim.keymap.set('n', '<leader>nn', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<leader>nf', ':NvimTreeFocus<CR>')

-- BufferLine
vim.keymap.set('n', '<leader>bj', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '<leader>bk', ':BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<leader>bh', ':BufferLineMoveNext<CR>')
vim.keymap.set('n', '<leader>bl', ':BufferLineMovePrev<CR>')
vim.keymap.set('n', '<leader>bs', ':BufferLinePick<CR>')
vim.keymap.set('n', '<leader>bd', ':BufferLinePickClose<CR>')
vim.keymap.set('n', '<leader>bD', ':BufferLineCloseOther<CR>')

-- Trouble
vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end)
vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end)
vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end)
vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end)
vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end)

local api = vim.api

-- Pane splitting
api.nvim_set_keymap('n', '<leader>sv', ':vsplit<CR>', { noremap = true })
api.nvim_set_keymap('n', '<leader>sh', ':split<CR>', { noremap = true })

-- Pane navigation
api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true })
api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true })
api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true })
api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true })

-- Paste from clipboard
api.nvim_set_keymap('n', '<C-p>', '"+p', { noremap = true })

-- Easily exit insert mode
api.nvim_set_keymap('i', 'jj', '<ESC>', { noremap = true })

-- Unhighlight search results
api.nvim_set_keymap('n', '<ESC>', ':nohlsearch<CR>', { noremap = true })

-- Telescope
api.nvim_set_keymap('n', '<leader>ff', ':Telescope find_files<CR>', { noremap = true })
api.nvim_set_keymap('n', '<leader>fg', ':Telescope live_grep<CR>', { noremap = true })
api.nvim_set_keymap('n', '<leader>fb', ':Telescope buffers<CR>', { noremap = true })
api.nvim_set_keymap('n', '<leader>fh', ':Telescope help_tags<CR>', { noremap = true })

-- File tree
api.nvim_set_keymap('n', '<leader>t', ':NvimTreeToggle<CR>', { noremap = true })

-- Move through diagnostics
api.nvim_set_keymap('n', '[d', 'vim.diagnostic.goto_prev', { desc = "Go to previous [D]iagnostic message" })
api.nvim_set_keymap('n', ']d', 'vim.diagnostic.goto_next', { desc = "Go to next [D]iagnostic message" })
api.nvim_set_keymap('n', '<leader>e', 'vim.diagnostic.open_float', { desc = "Show diagnostic [E]rror messages" })
api.nvim_set_keymap('n', '<leader>q', 'vim.diagnostic.setloclist', { desc = "Open diagnostic [Q]uickfix list" })

-- Snippets
local snippetsDir = "C:/Users/jesse/Dev/dotfiles/snippets/"
api.nvim_set_keymap('n', ',html', ":read " .. snippetsDir .. "template.html<CR>7j<S-a>", { noremap = true })
api.nvim_set_keymap('n', ',cppnc', "gg:read " .. snippetsDir .. "nclass.hpp<CR>ggdd2jwciw", { noremap = true })
api.nvim_set_keymap('n', ',cppif', "gg:read " .. snippetsDir .. "if.cpp<CR>kddo", { noremap = true })
api.nvim_set_keymap('n', ',cppfor', "gg:read " .. snippetsDir .. "for.cpp<CR>kddo", { noremap = true })

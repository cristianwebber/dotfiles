local keymap = function(mode, key, result)
  vim.api.nvim_set_keymap(
    mode,
    key,
    result,
    { noremap = true, silent = true }
  )
end

-- Remove Arrows
keymap('', '<up>', '<nop>')
keymap('', '<down>', '<nop>')
keymap('', '<left>', '<nop>')
keymap('', '<right>', '<nop>')

-- Exit with JK
keymap('i', 'jk', '<ESC>')
keymap('i', 'JK', '<ESC>')
keymap('i', 'jK', '<ESC>')
keymap('v', 'jk', '<ESC>')
keymap('v', 'JK', '<ESC>')
keymap('v', 'jK', '<ESC>')

-- Move lines
keymap('n', '<A-j>', ': .m+1<CR>==')
keymap('n', '<A-k>', ': .m-2<CR>==')
keymap('i', '<A-j>', '<Esc>: .m+1<CR>==gi')
keymap('i', '<A-k>', '<Esc>: .m-2<CR>==gi')
keymap('v', '<A-j>', ': .m+1<CR>gv==gv')
keymap('v', '<A-k>', ': .m-2<CR>gv==gv')
--
-- Keep in center when moving
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")

-- Normal Bindings
keymap('n', '<C-q>', ':bd<CR>') -- close buffer
keymap('n', '<C-s>', ':w<CR>') -- save buffer
keymap('n', '<C-e>', '<cmd>Telescope find_files<cr>')

-- Copy line
keymap('n', '<leader>l', 'yyp')

-- New empty line
keymap('n', '<leader>o', 'o<Esc>')
keymap('n', '<leader>O', 'O<Esc>')

-- Resize with arrows
keymap('n', '<C-Up>', ':resize -2<CR>')
keymap('n', '<C-Down>', ':resize +2<CR>')
keymap('n', '<C-Left>', ':vertical resize -2<CR>')
keymap('n', '<C-Right>', ':vertical resize +2<CR>')

-- Navigate buffers
keymap('n', '<S-l>', ':bnext<CR>')
keymap('n', '<S-h>', ':bprevious<CR>')

-- Insert Bindings
keymap('i', '<C-c>', '<Esc>')

-- Telescope
keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>')
keymap('n', '<leader>fh', '<cmd>Telescope help_tags<cr>')

-- NERDTree
keymap('n', '<C-n>', ':NERDTree<CR>')
keymap('n', '<C-w>', ':NERDTreeToggle<CR>')
keymap('n', '<leader>n', ':NERDTreeFind<CR>')

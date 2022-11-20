local keymap = function(mode, key, result)
  vim.api.nvim_set_keymap(
    mode,
    key,
    result,
    {noremap = true, silent = true}
  )
end

-- Remove Arrows
keymap('', '<up>', '<nop>')
keymap('', '<down>', '<nop>')
keymap('', '<left>', '<nop>')
keymap('', '<right>', '<nop>')
keymap('i', 'jk', '<ESC>')
keymap('i', 'JK', '<ESC>')
keymap('i', 'jK', '<ESC>')
keymap('v', 'jk', '<ESC>')
keymap('v', 'JK', '<ESC>')
keymap('v', 'jK', '<ESC>')

-- Normal Bindings
keymap('n', '<C-q>', ':q!<CR>')
keymap('n', '<C-s>', ':w<CR>')
keymap('n', '<C-e>', ':NvimTreeFindFile<CR>')

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

-- Git
--keymap('n', '<leader>gg', '<cmd>lua _LAZYGIT_TOGGLE()<CR>')

-- Comment
--keymap('n', '<leader>/', '<cmd>lua require('Comment.api').toggle.linewise.current()<CR>')
--keymap('x', '<leader>/', '<ESC><CMD>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>')

local key_mapper = function(mode, key, result)
  vim.api.nvim_set_keymap(
    mode,
    key,
    result,
    {noremap = true, silent = true}
  )
end

-- Remove Arrows
key_mapper('', '<up>', '<nop>')
key_mapper('', '<down>', '<nop>')
key_mapper('', '<left>', '<nop>')
key_mapper('', '<right>', '<nop>')
key_mapper('i', 'jk', '<ESC>')
key_mapper('i', 'JK', '<ESC>')
key_mapper('i', 'jK', '<ESC>')
key_mapper('v', 'jk', '<ESC>')
key_mapper('v', 'JK', '<ESC>')
key_mapper('v', 'jK', '<ESC>')

-- Normal Bindings
key_mapper('n', "<C-q>", ":q!<CR>")
key_mapper('n', "<C-s>", ":w<CR>")
key_mapper('n', "<C-e>", ":NvimTreeFindFile<CR>")

-- Insert Bindings
key_mapper('i', "<C-c>", "<Esc>")

-- Telescope
key_mapper('n', "<leader>ff", "<cmd>Telescope find_files<cr>")
key_mapper('n', "<leader>fg", "<cmd>Telescope live_grep<cr>")
key_mapper('n', "<leader>fb", "<cmd>Telescope buffers<cr>")
key_mapper('n', "<leader>fh", "<cmd>Telescope help_tags<cr>")

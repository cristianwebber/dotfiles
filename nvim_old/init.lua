require("webber")

vim.g.color_schema = 'gruvbox'

vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]

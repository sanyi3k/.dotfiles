local formatAutogroup = vim.api.nvim_create_augroup("FormatAutogroup", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", { command = "FormatWrite", group = formatAutogroup })


local formatAutogroup = vim.api.nvim_create_augroup("FormatAutogroup", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", { command = "FormatWrite", group = formatAutogroup })

ProjectSettings = { pattern = "", size = 0 }
local projectSettings = {
            ["*/invertigro/backend/**/*.js"] = 2,
            ["*/invertigro/backend/*.js"] = 2,
            ["*/invertigro/backend/**/*.json"] = 2,
            ["*/invertigro/backend/*.json"] = 2,
            ["*/terkom-monorepo/**/*.ts"] = 2,
            ["*/terkom-monorepo/*.ts"] = 2,
            ["*/terkom-monorepo/**/*.tsx"] = 2,
            ["*/terkom-monorepo/*.tsx"] = 2,
            ["*/terkom-monorepo/**/*.json"] = 2,
            ["*/terkom-monorepo/*.json"] = 2,
            ["*/terkom-monorepo-2/**/*.ts"] = 2,
            ["*/terkom-monorepo-2/*.ts"] = 2,
            ["*/terkom-monorepo-2/**/*.tsx"] = 2,
            ["*/terkom-monorepo-2/*.tsx"] = 2,
            ["*/terkom-monorepo-2/**/*.json"] = 2,
            ["*/terkom-monorepo-2/*.json"] = 2
}

local setTab = function(size) vim.opt.tabstop = size vim.opt.softtabstop = size vim.opt.shiftwidth = size end
local identationAutogroup = vim.api.nvim_create_augroup("IdentationAutogroup", { clear = true })
for k,v in pairs(projectSettings)
do
    vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, 
        { 
            pattern = k,
            callback = function() setTab(v) end, 
            group = identationAutogroup
        }
    )
end

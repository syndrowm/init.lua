require("syn.set")
require("syn.remap")
require("syn.lazy")
require("syn.skeleton")

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local ThePrimeagenGroup = augroup('ThePrimeagen', { clear = true })
local yank_group = augroup('HighlightYank', { clear = true })

function R(name)
    require("plenary.reload").reload_module(name)
end

-- highlight text that was yanked
autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 350
        })
    end,
})

-- strip spaces at the end of files
autocmd({"BufWritePre"}, {
    group = ThePrimeagenGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

-- ignore multiple different client offset_encodings warning
local notify = vim.notify
vim.notify = function(msg, ...)
    if msg:match("warning: multiple different client offset_encodings") then
        return
    end

    notify(msg, ...)
end

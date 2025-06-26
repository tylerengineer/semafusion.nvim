-- lua/semafusion/light.lua

local M = {}

function M.setup(c, transparent)
    vim.cmd('highlight clear')
    if vim.fn.exists('syntax_on') == 1 then vim.cmd('syntax reset') end
    vim.o.background = 'light'
    vim.g.colors_name = 'semafusion-light'

    local set = vim.api.nvim_set_hl
    local bg = transparent and 'NONE' or c.bg

    set(0, 'Normal', { fg = c.fg, bg = bg })
    set(0, 'LineNr', { fg = c.subtle })
    set(0, 'CursorLineNr', { fg = c.accent, bold = true })
    set(0, 'Visual', { bg = c.subtle })
    set(0, 'StatusLine', { fg = bg, bg = c.border })
    set(0, 'VertSplit', { fg = c.border })
    set(0, 'Pmenu', { fg = c.fg, bg = c.surface })
    set(0, 'PmenuSel', { fg = bg, bg = c.accent })
    set(0, 'Search', { fg = bg, bg = c.accent })

    set(0, 'Comment', { fg = c.border, italic = true })
    set(0, 'Constant', { fg = c.accent })
    set(0, 'String', { fg = c.subtle })
    set(0, 'Function', { fg = c.fg, bold = true })
    set(0, 'Keyword', { fg = c.accent, italic = true })
    set(0, 'Type', { fg = c.headline })
    set(0, 'Identifier', { fg = c.fg })
    set(0, 'Statement', { fg = c.fg, bold = true })

    set(0, '@comment', { link = 'Comment' })
    set(0, '@string', { link = 'String' })
    set(0, '@function', { link = 'Function' })
    set(0, '@keyword', { link = 'Keyword' })
    set(0, '@type', { link = 'Type' })
    set(0, '@variable', { fg = c.fg })
end

return M

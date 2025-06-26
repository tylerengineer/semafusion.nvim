-- lua/semafusion/dark.lua

local M = {}

M.setup = function(c, transparent)
    local set = vim.api.nvim_set_hl

    local bg = transparent and 'NONE' or c.bg

    set(0, 'Normal', { fg = c.fg, bg = bg })
    set(0, 'Comment', { fg = c.comment, italic = true })
    set(0, 'CursorLine', { bg = c.cursorline })
    set(0, 'CursorLineNr', { fg = c.accent, bold = true })
    set(0, 'LineNr', { fg = c.line })
    set(0, 'Visual', { bg = c.selection })
    set(0, 'Pmenu', { fg = c.fg, bg = c.popup })
    set(0, 'PmenuSel', { fg = c.bg, bg = c.accent })
    set(0, 'Search', { fg = c.bg, bg = c.accent })
    set(0, 'IncSearch', { fg = c.bg, bg = c.constant })
    set(0, 'Type', { fg = c.constant })
    set(0, 'Keyword', { fg = c.accent, bold = true })
    set(0, 'Function', { fg = c.accent, bold = true })
    set(0, 'Constant', { fg = c.constant })
    set(0, '@comment', { fg = c.comment, italic = true })
    set(0, '@function', { fg = c.accent, bold = true })
    set(0, '@type', { fg = c.constant })
end

return M

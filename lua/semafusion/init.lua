-- lua/semafusion/init.lua

local M = {}

M.load = function(opts)
    opts = opts or {}
    local variant = opts.variant or 'light'
    local style = opts.style or 'editorial'
    local transparent = opts.transparent or false

    local colors = require('semafusion.colors').get(variant, style)
    local theme = require('semafusion.' .. variant)
    theme.setup(colors, transparent)

    vim.o.background = variant
    vim.g.colors_name = 'semafusion-' .. variant
end

return M

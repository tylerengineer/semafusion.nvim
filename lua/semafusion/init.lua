-- lua/semafusion/init.lua

local M = {}

M.load = function(opts)
    opts = opts or {}
    local variant = opts.variant or 'dark'
    local style = opts.style or 'vibrant'
    local transparent = opts.transparent or false

    local colors = require('semafusion.colors')[style]
    local theme = require('semafusion.' .. variant)
    theme.setup(colors[variant], transparent)
end

return M

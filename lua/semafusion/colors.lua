-- lua/semafusion/colors.lua

local M = {}

M.get = function(variant, style)
    local palette = {
        cream = '#edede9',
        beige = '#d6ccc2',
        blush = '#f5ebe0',
        tan = '#e3d5ca',
        dust = '#d5bdaf',
        canvas = '#f8f5d7',
        canvas_light = '#f1f0e4',
        graphite = '#353535',
        green = '#1dcd76',
        mint = '#02c39a',
        fg_dark = '#2c2c2c',
        bg_dark = '#3a3a3a',
    }

    local common = {
        none = 'NONE',
        accent = palette.green,
        subtle = palette.dust,
    }

    if variant == 'light' then
        return {
            -- bg = palette.canvas,
            bg = palette.canvas_light,
            fg = palette.graphite,
            comment = palette.dust,
            line = palette.tan,
            menu = palette.beige,
            popup = palette.blush,
            accent = palette.green,
            constant = palette.mint,
            cursorline = palette.blush,
            selection = palette.beige,
            transparent = common.none,
        }
    else
        return {
            -- bg = '#403e3b',
            bg = '#59554f',
            fg = '#f4f3f0',
            comment = palette.dust,
            line = '#7c746e',
            menu = '#5b534c',
            popup = '#4c443d',
            accent = palette.green,
            constant = palette.mint,
            cursorline = '#3a3836',
            selection = '#4e4b48',
            transparent = common.none,
        }
    end
end

return M

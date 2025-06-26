# 🚦 semafusion.nvim

**semafusion.nvim** is a Neovim theme inspired by the refined, editorial UI of
[Semafor.com](https://semafor.com). It brings a modern, spacious interface with
a sophisticated mix of warm neutral backgrounds, bold typography, and a
distinctive **#1dcd76** emerald accent. This theme supports multiple variants
and modes, perfect for users who crave balance between structure and calm visual
feedback.

## 🎨 Color Philosophy

Sourced from Semafor’s design aesthetic and the following palette:

- `#f8f8f7` / `#1f1f1e`: Background
- `#ffffff` / `#2b2b2b`: Surface layer
- `#dcdcdc` / `#3c3c3b`: Subtle UI
- `#cccccc` / `#4a4a49`: Borders
- `#1dcd76`: Accent green

## 🔧 Installation (Lazy.nvim)

```lua
{
  "tylerengineer/semafusion.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("semafusion").load({
      variant = "dark",       -- or "light"
      style = "vibrant",      -- or "muted"
      transparent = false     -- true if using terminal transparency
    })
  end,
}
```

## 💡 Style Modes

| Variant | Style   | Description                                |
| ------- | ------- | ------------------------------------------ |
| light   | vibrant | Bold clean contrast with sharp green punch |
| light   | muted   | Neutral newsprint tone with soft edge      |
| dark    | vibrant | Modern graphite with bright green accents  |
| dark    | muted   | Editorial warmth with dimmed background    |

## 🌱 Features

- ✅ TreeSitter highlights
- ✅ Transparent mode
- ✅ Carefully tuned contrast
- ✅ UI and syntax cohesion

## 🌳 TreeSitter Support

All base groups are mapped to TS groups with logical linking:

```lua
set(0, "@function", { link = "Function" })
set(0, "@comment",  { link = "Comment" })
set(0, "@type",      { link = "Type" })
```

## 🌈 Accent Usage

The **#1dcd76** green accent is used for:

- Keywords
- Constants
- CursorLineNr
- Search highlights
- Menu selections

## 🔮 Transparent Background

Transparent backgrounds are supported by setting:

```lua
transparent = true
```

This disables background fills and blends into your terminal or editor’s
backdrop.

## 📘 Inspired By

- [Semafor](https://semafor.com)
- Clean editorial UX
- Typography-first color hierarchy

## 📄 License

MIT.

#### Fuse your editor with clarity 🚦

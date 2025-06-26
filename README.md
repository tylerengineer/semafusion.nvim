# 🚦 semafusion.nvim

**semafusion.nvim** is a Neovim color theme inspired by the vibrant editorial
design of [Semafor](https://www.semafor.com), blending a soft warm-paper
aesthetic with sharp green highlights and subtle interface contrast.

Built for those who write code like journalists — clear, stylish, and
structured.

---

## 🎨 Color Palette

Pulled from Semafor’s UI with a refined print-style coding experience:

| Name          | Hex       | Usage                         |
| ------------- | --------- | ----------------------------- |
| Cream White   | `#edede9` | Light mode background         |
| Warm Beige    | `#d6ccc2` | UI sections, menus            |
| Soft Blush    | `#f5ebe0` | Cursor line, folds            |
| Editorial Tan | `#e3d5ca` | Gutter, subtle UI             |
| Warm Dust     | `#d5bdaf` | Comments, folds, dims         |
| Canvas Yellow | `#f8f5d7` | Base background (light theme) |
| Graphite Gray | `#353535` | Base background (dark theme)  |
| Accent Green  | `#1dcd76` | Functions, keywords, search   |
| Accent Mint   | `#02c39a` | Constants, types, params      |

---

## ✨ Features

- 🗞️ Semafor-inspired palette + print UI aesthetics
- 🌓 Dual-mode: Light & Dark
- 🎛️ Style variants: `editorial` and `clean`
- 🌿 Full TreeSitter support
- 🪟 Transparent background mode
- 🧠 Minimal eye strain, max readability

---

## 🔧 Installation (Lazy.nvim)

```lua
{
  "tylerengineer/semafusion.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("semafusion").load({
      variant = "light",      -- or "dark"
      style = "editorial",    -- or "clean"
      transparent = false     -- or true
    })
  end,
}
```

Or load manually:

```lua
require("semafusion").load({ variant = "light" })
```

---

## 🧩 Modes & Styles

| Variant | Style     | Description                                       |
| ------- | --------- | ------------------------------------------------- |
| light   | editorial | Warm canvas with soft UI highlights & greens      |
| light   | clean     | Sharper paper tone, more contrast for prose/code  |
| dark    | editorial | Graphite base with warm tan and soft mint accents |
| dark    | clean     | Deeper contrast with simplified UI layers         |

---

## 🌳 TreeSitter Highlight Examples

```lua
-- inside dark.lua / light.lua
set(0, "@comment",   { fg = "#d5bdaf", italic = true })
set(0, "@function",  { fg = "#1dcd76", bold = true })
set(0, "@type",      { fg = "#02c39a" })
set(0, "@constant",  { fg = "#02c39a" })
```

---

## 🔍 Transparent Mode

Enable to use terminal backgrounds or custom overlays:

```lua
require("semafusion").load({
  variant = "dark",
  transparent = true,
})
```

---

## 📘 Philosophy

**semafusion.nvim** is for the engineers who:

- 🧑‍💻 Want their code to feel like print design
- ✍️ Write prose and comments as clearly as they write logic
- 🌐 Appreciate high-design journalism and interface hierarchy

---

#### Built for clarity. Inspired by editors.

🟢 `semafusion.nvim`

# 🌸 Sakura.nvim

A clean, aesthetic Neovim colorscheme inspired by the soft gradients of cherry blossoms and vaporwave sunsets. Built for clarity, syntax precision, and transparency.

## ✨ Features

* **Transparency First:** Designed to blend perfectly with your terminal wallpaper.
* **Vivid Syntax:** High-contrast palette for easy code readability.
* **Modern Support:** Full support for Treesitter, LSP Diagnostics, and Telescope.
* **Lightweight:** Pure Lua implementation with no heavy dependencies.

## 📸 Screenshots
![telegram-cloud-photo-size-4-5852694777294425515-y](https://github.com/user-attachments/assets/58f69802-e441-4072-9112-6bd5393eadc4)
![telegram-cloud-photo-size-4-5852694777294425514-y](https://github.com/user-attachments/assets/410e7b02-ebde-4683-9c80-703c36fdcafe)

## 🎨 Palette

| Color | Hex | Preview |
| --- | --- | --- |
| **Pink** (Keywords) | `#ff8080` | █ |
| **Purple** (Constants) | `#d588e6` | █ |
| **Cyan** (Identifiers) | `#8be9fd` | █ |
| **Green** (Functions) | `#50fa7b` | █ |
| **Yellow** (Strings) | `#f1fa8c` | █ |

## 📦 Installation

Install via your favorite plugin manager.

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
    "your-username/sakura.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd([[colorscheme sakura]])
    end,
}

```

## 🛠 Supported Plugins

* [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
* [LSP Diagnostics](https://neovim.io/doc/user/lsp.html)
* [Telescope](https://github.com/nvim-telescope/telescope.nvim)
* [Lualine](https://github.com/nvim-lualine/lualine.nvim)
* [GitSigns](https://github.com/lewis6991/gitsigns.nvim)
* [WhichKey](https://github.com/folke/which-key.nvim)
* [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
* [Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)

## ⚙️ Configuration

To enable the colorscheme, simply call:

```lua
require('sakura').setup() -- If using a setup function
-- or 
vim.cmd('colorscheme sakura')

```

*Note: Ensure your terminal emulator supports true colors (`set termguicolors` in Neovim).*

---

Made with 🌸 for the Neovim community.

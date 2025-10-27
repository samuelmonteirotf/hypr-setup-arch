<h1 align="center" style="font-size: 70px; font-weight: bold;">
   Hyprland by Samuel Monteiro
</h1>

<p align="center">
  <img src="https://img.shields.io/badge/LAST%20COMMIT-July%202025-purple?style=for-the-badge&color=green" alt="Last Commit" />
  <img src="https://img.shields.io/badge/REPO%20SIZE-540%20Kib-gradient?style=for-the-badge&color=ff5733" alt="Repo Size" />
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Linux-black?style=for-the-badge&logo=Linux&logoColor=white" alt="Linux" />
  <img src="https://img.shields.io/badge/Arch-1793D1?style=for-the-badge&logo=ArchLinux&logoColor=white" alt="Arch Linux" />
  <img src="https://img.shields.io/badge/Hyprland-7E42F4?style=for-the-badge&logo=hyprland" alt="Hyprland" />
</p>

---

 <h3 style="font-size: 26px; font-weight: bold;">
  Installation Instructions</h3>


```bash
git clone [https://github.com/IhTiYaR0/myconfig.git](https://github.com/samuelmonteirotf/hypr-setup-arch.git)
cd hypr-setup-arch
bash installpkg.sh
chmod +x install.sh
source install.sh
```

**After installation:**
- Hyprland configs, themes, and wallpapers will be ready
- Neovim config installed automatically (Lazy.nvim + LSP)
- First launch of `nvim` will auto-install all plugins
- Run `:Mason` inside Neovim to install LSP servers (lua_ls, bashls, clangd, pyright)

---

###  Neovim Configuration

This setup includes a **fully configured Neovim** with:
- **Plugin Manager**: Lazy.nvim (auto-installs on first launch)
- **LSP Support**: Mason + nvim-lspconfig for language servers
- **Autocompletion**: nvim-cmp with LSP integration
- **Fuzzy Finder**: Telescope for file/text search
- **Syntax Highlighting**: Treesitter
- **Theme**: Gruvbox Material with transparency
- **Status Bar**: Lualine

**Main Neovim Keybinds** (Leader = `Space`):
| Keybind | Function |
| ------- | -------- |
| `<Space>ff` | Find files (Telescope) |
| `<Space>fg` | Live grep (search in files) |
| `<Space>fb` | Browse open buffers |
| `<Space>e` | File explorer (netrw) |
| `<Space>w` | Save file |
| `<Space>q` | Quit |
| `gd` | Go to definition (LSP) |
| `gr` | Find references (LSP) |
| `<Space>rn` | Rename symbol (LSP) |
| `K` | Show hover documentation |

---

### Keybind Instructions 

| Command | Function |
| ------- | -------- |
| `Super` + `Q` | `Kitty` (Terminal) |
| `Super` + `N` | `Google Chrome` (Browser) |
| `Super` + `E` | `Thunar` (File Manager) |
| `Super` + `D` | `Wofi` (App Launcher) |
| `Super` + `T` | `Themes Menu` |
| `Super` + `F` | `Fullscreen` |
| `Super` + `F4` | `Kill Active Window` |
| `Super` + `Space` | `Toggle Split` |
| `Super` + `Shift` + `S` | `Screenshot (selection)` |
| `Super` + `right/left` | `Switch Workspace` |
| `Super` + `1-9` | `Go to Workspace 1-9` |
| `Super` + `Shift` + `1-9` | `Move Window to Workspace` |
| `Super` + `Shift` + `W` | `Start Waybar` |
| `Super` + `Shift` + `K` | `Kill Waybar` |
| `Super` + `F10` | `Lock Screen (hyprlock)` |
| `Super` + `F12` | `Exit Hyprland` |

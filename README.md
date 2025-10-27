![decorative image](https://camo.githubusercontent.com/91cd2f143058a9c8d21ac3d58a70b77e133d24a774fe055ce72a4a366a0f7a1f/68747470733a2f2f692e696d6775722e636f6d2f565a4f796d49662e706e67)

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

<h2 style="font-size: 50px;">Themes Overview</h2>

<div align="center">

### [ 🌪️ Fog ]
<table>
<tr>
<td><img src="https://i.imgur.com/na5EKcc.png" alt="Wind 1" style="border: 3px solid #14E0F8; border-radius: 8px;"></td>
<td><img src="https://i.imgur.com/mOzXIYJ.png" alt="Wind 2" style="border: 3px solid #14E0F8; border-radius: 8px;"></td>
</tr>
<tr>
<td><img src="https://i.imgur.com/rYVxf8J.png" alt="Wind 3" style="border: 3px solid #14E0F8; border-radius: 8px;"></td>
<td><img src="https://i.imgur.com/c9CUHbo.png" alt="Wind 4" style="border: 3px solid #14E0F8; border-radius: 8px;"></td>
</tr>
</table>

### [ ⚡ Lightning ]
<table>
<tr>
<td><img src="https://i.imgur.com/4Sb6KUj.png" alt="Lightning 1" style="border: 3px solid #FBAE23; border-radius: 8px;"></td>
<td><img src="https://i.imgur.com/qPhXTys.png" alt="Lightning 2" style="border: 3px solid #FBAE23; border-radius: 8px;"></td>
</tr>
<tr>
<td><img src="https://i.imgur.com/ta8bS00.png" alt="Lightning 3" style="border: 3px solid #FBAE23; border-radius: 8px;"></td>
<td><img src="https://i.imgur.com/SHI3DCD.png" alt="Lightning 4" style="border: 3px solid #FBAE23; border-radius: 8px;"></td>
</tr>
</table>

### [ 🌃 Night ]
<table>
<tr>
<td><img src="https://i.imgur.com/YWJZVOw.png" alt="Lightning 1" style="border: 3px solid #FBAE23; border-radius: 8px;"></td>
<td><img src="https://i.imgur.com/BT4Phyi.png" alt="Lightning 2" style="border: 3px solid #FBAE23; border-radius: 8px;"></td>
</tr>
<tr>
<td><img src="https://i.imgur.com/hC6VtBW.png" alt="Lightning 3" style="border: 3px solid #FBAE23; border-radius: 8px;"></td>
<td><img src="https://i.imgur.com/IZ8ivxZ.png" alt="Lightning 4" style="border: 3px solid #FBAE23; border-radius: 8px;"></td>
</tr>
</table>

### [ 🌿 Default] 
<table>
<tr>
<td><img src="https://i.imgur.com/mpGEOVM.png" alt="Default 1" style="border: 3px solid #FFFFFF; border-radius: 8px;"></td>
<td><img src="https://i.imgur.com/DNHk2bB.png" alt="Default 2" style="border: 3px solid #FFFFFF; border-radius: 8px;"></td>
</tr>
<tr>
<td><img src="https://i.imgur.com/hznd15z.png" alt="Default 3" style="border: 3px solid #FFFFFF; border-radius: 8px;"></td>
<td><img src="https://i.imgur.com/BGe118Q.png" alt="Default 4" style="border: 3px solid #FFFFFF; border-radius: 8px;"></td>
</tr>
</table>

</div>

---

 <h3 style="font-size: 26px; font-weight: bold;">
  Installation Instructions</h3>


```bash
git clone https://github.com/IhTiYaR0/myconfig.git
cd myconfig
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

#!/bin/bash
# ===============================================
# 📝 Neovim Configuration Installer
# Samuel Monteiro's Neovim Setup
# ===============================================

# Colors
GREEN="\e[32m"
BLUE="\e[34m"
YELLOW="\e[33m"
CYAN="\e[36m"
BOLD="\e[1m"
RESET="\e[0m"

echo -e "${CYAN}${BOLD}"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "   📝 Installing Neovim Configuration"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "${RESET}"

# Backup existing config
if [ -d ~/.config/nvim ]; then
    echo -e "${YELLOW}⚠️  Existing Neovim config found!${RESET}"
    echo -e "${BLUE}📦 Creating backup at ~/.config/nvim.backup.$(date +%Y%m%d_%H%M%S)${RESET}"
    mv ~/.config/nvim ~/.config/nvim.backup.$(date +%Y%m%d_%H%M%S)
fi

# Copy new configuration
echo -e "${BLUE}📋 Copying Neovim configuration...${RESET}"
mkdir -p ~/.config/nvim
cp -r nvim/* ~/.config/nvim/

# Install Lazy.nvim (plugin manager)
echo -e "${BLUE}📦 Installing Lazy.nvim plugin manager...${RESET}"
if [ ! -d "${XDG_DATA_HOME:-$HOME/.local/share}/nvim/lazy/lazy.nvim" ]; then
    git clone --filter=blob:none https://github.com/folke/lazy.nvim.git \
        --branch=stable \
        "${XDG_DATA_HOME:-$HOME/.local/share}/nvim/lazy/lazy.nvim"
    echo -e "${GREEN}✅ Lazy.nvim installed${RESET}"
else
    echo -e "${YELLOW}ℹ️  Lazy.nvim already installed${RESET}"
fi

echo ""
echo -e "${GREEN}${BOLD}✅ Neovim configuration installed successfully!${RESET}"
echo ""
echo -e "${CYAN}📌 Next steps:${RESET}"
echo -e "   1. Open Neovim: ${BOLD}nvim${RESET}"
echo -e "   2. Plugins will auto-install on first launch"
echo -e "   3. Run ${BOLD}:Mason${RESET} inside Neovim to install LSP servers"
echo ""
echo -e "${CYAN}🔧 Recommended LSP servers (install via :Mason):${RESET}"
echo -e "   • lua_ls      (Lua)"
echo -e "   • bashls      (Bash/Shell)"
echo -e "   • clangd      (C/C++)"
echo -e "   • pyright     (Python)"
echo ""
echo -e "${CYAN}⌨️  Main Keybinds:${RESET}"
echo -e "   • ${BOLD}<Space>ff${RESET} - Find files"
echo -e "   • ${BOLD}<Space>fg${RESET} - Live grep"
echo -e "   • ${BOLD}<Space>e${RESET}  - File explorer"
echo -e "   • ${BOLD}gd${RESET}        - Go to definition"
echo -e "   • ${BOLD}<Space>rn${RESET} - Rename symbol"
echo ""

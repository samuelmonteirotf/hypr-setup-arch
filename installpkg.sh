#!/bin/bash
# 🎨 Colors
GREEN="\e[32m"
RED="\e[31m"
BLUE="\e[34m"
YELLOW="\e[33m"
CYAN="\e[36m"
WHITE="\e[97m"
BOLD="\e[1m"
RESET="\e[0m"

PACMAN_FILE="pacman.txt"
AUR_FILE="aur.txt"

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
rm -rf yay
cd ~/myconfig/

# Dependency check
check_deps() {
    for cmd in figlet sudo pacman yay; do
        if ! command -v $cmd &>/dev/null; then
            echo -e "${RED}❌ Required '${cmd}', but it is not installed.${RESET}"
            exit 1
        fi
    done
}

# ASCII Logo
show_logo() {
    clear
    echo -e "${CYAN}${BOLD}"
    figlet -c "Hyprland"
    echo -e "${RESET}"
    echo -e "${BLUE}${BOLD}  ⚙️ Hyprland by Samuel Monteiro - Installer ⚙️${RESET}"
    echo ""
}

# Pretty box frame
print_box() {
    local msg="$1"
    local len=${#msg}
    local border=$(printf '═%.0s' $(seq 1 $((len + 4))))
    echo -e "${CYAN}╔═$border╗${RESET}"
    echo -e "${CYAN}║${RESET}  ${BOLD}${WHITE}$msg${RESET}  ${CYAN}║${RESET}"
    echo -e "${CYAN}╚═$border╝${RESET}"
}

# Three dots loading animation
loading_dots() {
    echo -n " "
    for i in {1..3}; do
        echo -n "."
        sleep 0.2
    done
    echo ""
}

# Install system packages
install_pacman_packages() {
    if [[ ! -f $PACMAN_FILE ]]; then
        echo -e "${YELLOW}⏭️  Skipping pacman: file not found.${RESET}"
        return
    fi

    print_box "📦 Installing system packages (pacman)"
    TOTAL=$(wc -l < "$PACMAN_FILE")
    COUNT=0

    while IFS= read -r pkg || [[ -n "$pkg" ]]; do
        [[ -z "$pkg" ]] && continue
        ((COUNT++))
        echo -ne "${CYAN}[${COUNT}/${TOTAL}]${RESET} "
        if pacman -Qi "$pkg" &>/dev/null; then
            echo -e "${GREEN}[✔]${RESET} ${pkg} already installed"
        else
            echo -ne "${BLUE}[⬇]${RESET} Installing ${YELLOW}${pkg}${RESET}"
            loading_dots
            if sudo pacman -S --noconfirm "$pkg" &>/dev/null; then
                echo -e "${GREEN}[✔]${RESET} ${pkg} installed"
            else
                echo -e "${RED}[✘]${RESET} Error installing ${pkg}"
            fi
        fi
    done < "$PACMAN_FILE"
}

# Install AUR packages
install_aur_packages() {
    if [[ ! -f $AUR_FILE ]]; then
        echo -e "${YELLOW}⏭️  Skipping AUR: file not found.${RESET}"
        return
    fi

    print_box "🧩 Installing AUR packages (yay)"
    TOTAL=$(wc -l < "$AUR_FILE")
    COUNT=0

    while IFS= read -r pkg || [[ -n "$pkg" ]]; do
        [[ -z "$pkg" ]] && continue
        ((COUNT++))
        echo -ne "${CYAN}[${COUNT}/${TOTAL}]${RESET} "
        if yay -Qi "$pkg" &>/dev/null; then
            echo -e "${GREEN}[✔]${RESET} ${pkg} already installed"
        else
            echo -ne "${BLUE}[⬇]${RESET} Installing ${YELLOW}${pkg}${RESET}"
            loading_dots
            if yay -S --noconfirm "$pkg" &>/dev/null; then
                echo -e "${GREEN}[✔]${RESET} ${pkg} installed"
            else
                echo -e "${RED}[✘]${RESET} Error installing ${pkg}"
            fi
        fi
    done < "$AUR_FILE"
}

# Internet connection check
check_internet() {
    echo -n "🌐 Checking internet connection"
    ping -q -w 2 -c 1 archlinux.org &>/dev/null && echo -e " ${GREEN}OK${RESET}" || {
        echo -e " ${RED}No connection!${RESET}"
        exit 1
    }
}

# === Execution ===
check_deps
show_logo
check_internet
install_pacman_packages
install_aur_packages
print_box "✅ All packages installed!"


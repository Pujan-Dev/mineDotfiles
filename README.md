
# 🧠 Mine's Dotfiles (Arch Linux + Nvim )

This repo contains my personal, reproducible, and minimal dotfiles setup using [`chezmoi`](https://www.chezmoi.io/) — optimized for Arch Linux + Hyprland + CLI tools.

---

## 📦 Features

- 🎛️ **Window Manager**: Hyprland + Waybar + Wofi
- ✍️ **Editor**: Neovim (Lua config)
- 💻 **Terminal**: Kitty, Alacritty
- 🐟 **Shell**: zsh
- 🎵 **Theming**: Spicetify for Spotify, Mako for notifications
- 📊 **TUI Tools**: btop, tmux, slides
- 🚀 Managed with [`chezmoi`](https://www.chezmoi.io/) for reproducibility and syncing

---

## 🛠️ Setup Instructions

### 1. Install chezmoi
```bash
sudo pacman -S chezmoi
# or
yay -S chezmoi
````

### 2. Initialize and apply dotfiles

```bash
chezmoi init Pujan-Dev
chezmoi apply
```

---

## 📁 Tracked Configs

```txt
.config/
├── alacritty/
├── btop/
├── fish/
├── hypr/
├── kitty/
├── mako/
├── nvim/
├── spicetify/
├── swaylock/
├── tmux/
├── waybar/
├── wofi/
├── zed/
```

> Note: Some files like secrets or machine-specific settings are ignored via `.chezmoignore`.

---

## 💡 Why chezmoi?

* 💾 All configs are version controlled.
* 🔁 Reproducible setup across machines.
* 🔐 Secrets management support (optional).
* 🧼 Cleaner than using raw `dotfiles` repo with symlinks or install scripts.

---

## 🤝 Contributing / Forking

Feel free to fork and adapt to your own workflow. Star this repo if you find it useful!

---

## 📜 License

MIT – use it freely.

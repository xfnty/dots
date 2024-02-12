# My dotfiles

![screenshot-1](.github/screenshot-1.png)
![screenshot-2](.github/screenshot-2.png)
![screenshot-3](.github/screenshot-3.png)

## Summary
- **Shell**: 
- **Terminal emulator**: [Alacritty](https://github.com/alacritty/alacritty)
- **Editor**: [Neovim](https://neovim.io/)
- **Window Manager**: [Sway](https://swaywm.org/)
- **Bar**: [waybar](https://github.com/Alexays/Waybar)
- **Launcher**: [tofi](https://github.com/philj56/tofi)
- **File Manager**: [lf](https://github.com/gokcehan/lf)

## Setting Up
### First steps
- Autologin on `tty1` (assuming the username is `main`): 
  ```
  unlink /run/runit/service/agetty-tty1
  mv /etc/runit/sv/agetty-tty1 /etc/runit/sv/agetty-autologin-tty1
  sed -i 's/GETTY_ARGS="--noclear"/GETTY_ARGS="--autologin main --noclear"/g' /etc/runit/sv/agetty-autologin-tty1
  ln -s /etc/runit/sv/agetty-autologin-tty1 /run/runit/service
  ```

### Installing required packages
- On Arch linux:
  ```bash
  sudo pacman -S nano nvim sway waybar swaybg
  ```

### Building from source
- [tofi](https://github.com/philj56/tofi):
  ```
  sudo pacman -S freetype2 harfbuzz cairo pango wayland libxkbcommon
  sudo pacman -S meson scdoc wayland-protocols
  git clone --depth 1 https://github.com/philj56/tofi
  cd tofi
  meson build -Dbuildtype=release && ninja -C build install
  cd ../
  ```

## TODO
- Refine waybar config
  - Power menu
- Setup audio
- Update nvim config
- Rice firefox
- List all of the required packages


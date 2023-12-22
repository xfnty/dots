# My dotfiles

## Summary
- **Operating system**: [Void Linux](https://voidlinux.org/)
- **Libc**: [musl](https://docs.voidlinux.org/installation/musl.html)
- **Window Manager**: [berry](https://berrywm.org/)
- **Bar**: [polybar](https://polybar.github.io/)
- **Hotkey Manager**: [sxhkd](https://manpages.org/sxhkd)
- **Backlight Manager**: [xbacklight](https://www.x.org/archive/X11R7.5/doc/man/man1/xbacklight.1.html)
- **Program Launcher**: [dmenu](https://github.com/xfnty/dmenu)

## Setting Up
> [!WARNING]
> - Figure out what other packages are required after the installation.
> - Add `stow` commands

```
sudo xbps-install git stow
cd ~ && git clone --depth 1 https://github.com/xfnty/dots
```

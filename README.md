use dbus-run-session to launch stuff in wayland if it doesnt work right

put the following in `~/.config/xdg-desktop-portal/portals.conf` for wlroots
```
[preferred]
default=wlr
```

autostart for wayland:
```
export QT_QPA_PLATFORMTHEME=qt5ct

kanshi &
/usr/libexec/xdg-desktop-portal-wlr &
wl-paste --watch cliphist store &
easyeffects --gapplication-service &
~/.local/share/scripts/mail-check.sh &

find $HOME/pictures/wallpapers -type f | shuf -n 1 | \
xargs -I{} swaymsg 'output "eDP-1" background "{}" fill'

find $HOME/pictures/wallpapers -type f | shuf -n 1 | \
xargs -I{} swaymsg 'output "HDMI-A-1" background "{}" fill'

pipewire && pkill pipewire && pipewire &
exec dbus-update-activation-environment --all
```

`exec dbus-update-activation-environment --all` helps obs work

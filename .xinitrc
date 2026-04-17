export QT_QPA_PLATFORMTHEME=qt5ct

xrandr --output eDP-1 --mode 2880x1800 --rate 120
xrdb ~/.Xresources

picom &
dunst &
feh --recursive --bg-fill --randomize ~/pictures/wallpapers/ &
slstatus &
pipewire &
easyeffects --gapplication-service &
~/.local/share/scripts/mail-check.sh &

if which dbus-launch >/dev/null && test -z "$DBUS_SESSION_BUS_ADDRESS"; then
    eval "$(dbus-launch --sh-syntax --exit-with-session)"
fi

exec dwm

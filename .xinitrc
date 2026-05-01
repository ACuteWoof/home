export QT_QPA_PLATFORMTHEME=qt5ct

xrandr --output eDP-1 --primary --mode 2880x1800 --pos 3840x360 --rate 120 --output HDMI-1 --mode 1920x1080 --scale 2x2 --pos 0x0 --rate 75
xrdb ~/.Xresources

picom &
dunst &
feh --recursive --bg-fill --randomize ~/pictures/wallpapers/ &
slstatus &
pipewire &
easyeffects --gapplication-service &
kwalletd6 &
~/.local/share/scripts/mail-check.sh &

if which dbus-launch >/dev/null && test -z "$DBUS_SESSION_BUS_ADDRESS"; then
    eval "$(dbus-launch --sh-syntax --exit-with-session)"
fi

exec dwm

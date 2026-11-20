# fix for screen readers
if grep -Fqa 'accessibility=' /proc/cmdline &> /dev/null; then
    setopt SINGLE_LINE_ZLE
fi

~/.automated_script.sh

# Start Hyprland automatically on the live ISO
if [[ -z "$DISPLAY" && -z "$WAYLAND_DISPLAY" && "$(tty)" == "/dev/tty1" ]]; then
    exec start-hyprland
fi
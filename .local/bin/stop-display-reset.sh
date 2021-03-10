#!/usr/bin/sh
if cat /proc/acpi/button/lid/LID/state | grep -q open; then
    swaymsg output DP-1 enable
else
    swaymsg output DP-1 disable
fi

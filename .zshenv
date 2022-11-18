export BAT_THEME="Solarized (light)"
export CLUTTER_BACKEND=wayland
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_COMMAND="fd --ansi --type f --hidden --follow --exclude .git --color=always"
export GDK_BACKEND=wayland
export MOZ_ENABLE_WAYLAND=1
export QT_QPA_PLATFORM=wayland
export SOLARIZED_THEME=light
eval $(gnome-keyring-daemon --components=ssh --start)
export GNOME_KEYRING_CONTROL
export SSH_AUTH_SOCK
export TERM=xterm-256color
export XDG_CURRENT_DESKTOP=sway

# Load secrets
test -r $HOME/.env && . $HOME/.env
. "$HOME/.cargo/env"

# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# BEGIN SNIPPET: Platform.sh CLI configuration
HOME=${HOME:-'/home/rh'}
export PATH="$HOME/"'.platformsh/bin':"$PATH"
if [ -f "$HOME/"'.platformsh/shell-config.rc' ]; then . "$HOME/"'.platformsh/shell-config.rc'; fi # END SNIPPET

# Load secrets
test -r $HOME/.env && . $HOME/.env

#export CLUTTER_BACKEND=wayland
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_COMMAND="fd --type f --hidden --follow --exclude .git --color=always"
export FZF_DEFAULT_OPTS="--ansi"
#export GDK_BACKEND=wayland
export MOZ_ENABLE_WAYLAND=1
export PATH="$HOME/.symfony/bin:$PYTHONPATH:$PATH"
export QT_QPA_PLATFORM=wayland

alias bc='bc -l'
alias cat='bat -pp --theme="Nord"'
#alias cd='z'

# https://www.atlassian.com/git/tutorials/dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

alias df='df -H'
alias dmesg='sudo /home/rh/.cargo/bin/rmesg'
alias du='dust'
alias find='fd'
alias firewall='sudo nft list ruleset'
alias grep='rg -i -n -uuu'
#alias ls='exa -G  --color auto --icons -a -s type'
alias ls='exa -l --color always --icons -a -s type'
alias mkdir='mkdir -pv'
alias nano='nano -l'
alias pdf='zathura'
alias ping='ping -c 4 -i.2'
alias ports='netstat -tulanp'
alias ps='procs'
#alias ssh-apex='TERM=vt100 ssh -t 46692'
#alias ssh-46692='ssh -t apex'
alias time='hyperfine'
alias top='btm'
alias untar='tar -zxvf'
alias vi=nvim

# git aliases
alias g='git'
alias gco='git checkout'
alias gcb='git checkout -b'
#alias gr='git rm -rf'
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias gp='git push'
alias gl='git pull'

# Update all repos in current dir
alias git-pull-all="fd -H -g --max-depth 2 --type d .git | sed 's/.git//' | xargs -I {} git -C {} pull"

## get rid of command not found ##
alias cd..='cd ..'

## a quick way to get out of current directory ##
alias ..='cd ..'
#alias ...='cd ../../../'
#alias ....='cd ../../../../'

# handy short cuts #
alias h='history'
alias j='jobs -l'

# if user is not root, pass all commands via sudo #
if [ $UID -ne 0 ]; then
    alias reboot='sudo reboot'
    alias update='sudo dnf update'
    alias get='sudo dnf install'
fi

eval "$(zoxide init bash)"
#eval "$(starship init bash)"

# BEGIN SNIPPET: SymfonyCloud (PHP) CLI configuration
HOME=${HOME:-'/home/rh'}
export PATH="$HOME/"'.symfony-cloud-cli/bin':"$PATH"
if [ -f "$HOME/"'.symfony-cloud-cli/shell-config.rc' ]; then . "$HOME/"'.symfony-cloud-cli/shell-config.rc'; fi # END SNIPPET

# BEGIN SNIPPET: Magento Cloud CLI configuration
HOME=${HOME:-'/home/rh'}
export PATH="$HOME/"'.magento-cloud/bin':"$PATH"
if [ -f "$HOME/"'.magento-cloud/shell-config.rc' ]; then . "$HOME/"'.magento-cloud/shell-config.rc'; fi # END SNIPPET

# Reload .bashrc automatically
#alias='$EDITOR ~/.bashrc ; source ~/.bashrc'

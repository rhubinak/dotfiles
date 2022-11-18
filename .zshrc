# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/rh/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git web-search)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
fpath+=${ZDOTDIR:-~}/.zsh_functions

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

# Load rust utils
export PATH="$HOME/.cargo/bin:$PATH"

# Load Platform.sh aliases
test -r $HOME/psh/cse-aliases/cse-aliases.env && . $HOME/psh/cse-aliases/cse-aliases.env

alias bc='bc -l'
alias c='bat -pp --theme="Solarized (light)"'
alias cal='vdirsyncer sync && ikhal'
alias code='codium --ozone-platform=wayland --enable-features=UseOzonePlatform,WaylandWindowDecorations,WebRTCPipeWireCapturer'

# https://www.atlassian.com/git/tutorials/dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias df='df -H'
alias du='dust'
alias find='fd'

# to search for files without match use --files-without-match
alias grep='rg -i -n -uuu'

#alias ls='exa -G  --color auto --icons -a -s type'
alias l='exa -l --color always --icons -a -s type'
alias m='mdcat'
alias mkdir='mkdir -pv'
alias mpv='mpv --stop-screensaver --gpu-context=wayland'
alias n='nano'
alias pdf='zathura'
#alias ping='ping -c 4 -i.2'
#alias ports='netstat -tulanp'
alias ps='ps fauxw'
#alias ps='procs'
alias reboot='systemctl reboot'
#alias socat='socat -d -d'
#alias ssh-apex='TERM=vt100 ssh -t 46692'
#alias ssh-apex='TERM=xterm-256color ssh -t 46692'
#alias ssh-46692='ssh -t apex'
alias time='hyperfine'
alias top='htop'
alias untar='tar -zxvf'
alias vi=nvim
alias v=nvim
alias ytdl='yt-dlp -x --audio-format "mp3" --audio-quality 0 --add-header "Cookie:"'
alias zrc='nvim ~/.zshrc && source ~/.zshrc'
alias zzz='systemctl suspend && swaylock -f -e -c 000000'

# git aliases (others provided by the git plugin)
#alias g='git'
#alias gco='git checkout'
#alias gcom='git checkout master'
#alias gcb='git checkout -b'
#alias gr='git rm -rf'
alias gs='git status'
#alias ga='git add .'
alias gc='git commit -m'
#alias gp='git push'
#alias gl='git pull'

# Update all repos in current dir
alias git-pull-all="exa -d */.git | sed 's/\/.git//'| xargs -P10 -I{} git -C {} pull"

# Handy shortcuts
alias h='history'
alias j='jobs -l'

# Resize images like `resize what where target_px`
resize() {
    convert $1 -filter Triangle -define filter:support=2 -thumbnail $3 -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -quality 82 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace None -colorspace sRGB -strip $2
}

# Record video from webcam, encode to x265 via GPU, drop duplicate frames and keep only last 5 mins
alias record="ffmpeg -an -vaapi_device /dev/dri/renderD128 -f v4l2 -framerate 30 -video_size 1920x1080 -c:v mjpeg -i /dev/video4 -vf mpdecimate,setpts=N/FRAME_RATE/TB,format=nv12,hwupload -c:v hevc_vaapi -f segment -segment_time 300 -segment_wrap 2 webcam%01d.mkv"

# if user is not root, pass all commands via sudo #
if [ $UID -ne 0 ]; then
    alias dmesg='sudo dmesg'
    alias firewall='sudo nft list ruleset'
    alias update='sudo dnf update && flatpak update'
    alias get='sudo dnf install'
fi

# Set a more restrictive umask. This makes newly created files only readable by the owner.
umask 0077

# BEGIN SNIPPET: SymfonyCloud (PHP) CLI configuration
HOME=${HOME:-'/home/rh'}
export PATH="$HOME/"'.symfony-cloud-cli/bin':"$PATH"
if [ -f "$HOME/"'.symfony-cloud-cli/shell-config.rc' ]; then . "$HOME/"'.symfony-cloud-cli/shell-config.rc'; fi # END SNIPPET

# BEGIN SNIPPET: Magento Cloud CLI configuration
HOME=${HOME:-'/home/rh'}
export PATH="$HOME/"'.magento-cloud/bin':"$PATH"
if [ -f "$HOME/"'.magento-cloud/shell-config.rc' ]; then . "$HOME/"'.magento-cloud/shell-config.rc'; fi # END SNIPPET

eval $(thefuck --alias)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# BEGIN SNIPPET: OVHcloud Web PaaS CLI configuration
HOME=${HOME:-'/home/rh'}
export PATH="$HOME/"'.webpaas-cli/bin':"$PATH"
if [ -f "$HOME/"'.webpaas-cli/shell-config.rc' ]; then . "$HOME/"'.webpaas-cli/shell-config.rc'; fi # END SNIPPET

# BEGIN SNIPPET: Shopware PaaS CLI configuration
HOME=${HOME:-'/home/rh'}
export PATH="$HOME/"'.shopware-cli/bin':"$PATH"
if [ -f "$HOME/"'.shopware-cli/shell-config.rc' ]; then . "$HOME/"'.shopware-cli/shell-config.rc'; fi # END SNIPPET

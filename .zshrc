# Use powerline
# USE_POWERLINE="true"
unsetopt correct_all

# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
# if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
#   source /usr/share/zsh/manjaro-zsh-prompt
# fi

# zsh-ls
# source ~/antigen.zsh
# antigen bundle zpm-zsh/ls
# antigen bundle zpm-zsh/material-colors
# antigen theme candy
# antigen apply

# Auto-suggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Adding MyScripts dir in PATH
export PATH="/home/jshelly/.local/MyScripts:$PATH"

# make java apps font look prettier
export JDK_JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true'
# Aliases
alias cat='bat'
alias ls='exa'
alias exa='exa --classify'
alias 291='cd ~/Desktop/Sem\ 2/CMPUT-291/'
alias 325='cd ~/Desktop/Sem\ 2/CMPUT-325/'
alias 366='cd ~/Desktop/Sem\ 2/CMPUT-366/'
alias 215='cd ~/Desktop/Sem\ 2/MATH-215/'
alias 101='cd ~/Desktop/Sem\ 2/ECON-101/'
alias vim='nvim'
alias lsa='ls -a'
alias l='ls -la --header'
alias cp="cp -i"                                                # Confirm before overwriting something
alias pwd='pwd -P'
alias df='df -h'                                                # Human-readable sizes
alias free='free -m'                                            # Show sizes in MB
alias gitu='git add . && git commit && git push'
alias dudir='du -h -d1'
alias books='cd ~/Stuff/Books'
# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable (requires sebastiencs/icons-in-terminal)

zstyle ':vcs_info:git:*' formats '  '
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT="%f%B%F{45}[%f%b%B%F{45}%m%f%b%B%F{45}]%f%b%F{44} $ %f"

# initial RPROMPT (on opening the terminal)
RPROMPT="%F{140}$(pwd)%f%F{226}\$vcs_info_msg_0_%f"
# symlink resolution for symlinked directories
function chpwd() {
  RPROMPT="%F{140}$(pwd)%f%F{226}\$vcs_info_msg_0_%f"
}

# aliasi
# alias touche='flatpak run com.github.joseexposito.touche'
# alias rungpu='__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia'
alias py='python3 -i ~/.local/MyScripts/py_alias_starter.py'
alias pyt='python3'
alias dard="python3 ~/.local/MyScripts/dard.py"
alias cls='clear'
# alias mc='rungpu java -jar /opt/Minecraft/TLauncher-2.75.jar'
# alias unity='/home/jshelly/Unity/UnityHub.AppImage'
alias sshuni='ssh jyotirma@ug12.cs.ualberta.ca'
alias sshunix='ssh -X jyotirma@ohaton.cs.ualberta.ca'
alias batteryinfo='upower -i /org/freedesktop/UPower/devices/battery_BAT0'
alias risc='d java -jar /opt/rars/rars.jar'
alias g='f() { gcc -std=c99 -Wall $1.c -o $1 };f'
alias kys='shutdown now'
alias eclass='brave-browser https://eclass.srv.ualberta.ca/my/ &; disown; exit;'
alias ocr='bash ~/.local/MyScripts/screen_ts.sh'
alias xxclip='xclip -selection clipboard'
#alias fzf='fzf | xclip -sel clip'
alias gitrepo='git config --get remote.origin.url'
# alias clion='d /opt/clion-2021.1.2/bin/clion.sh'
#alias afk='~/.local/MyScripts/afkscript_manager.sh'
alias open='xdg-open'
alias sql='rlwrap -a -N -c -i sqlite3'
alias neofetch='clear && neofetch'
# alias mars='d java -jar /opt/Mars4_5.jar'
# alias pycharm='d /opt/pycharm-2021.1.2/bin/pycharm.sh'
alias 20min='python3 ~/.local/MyScripts/20min.py'
alias uni='~/Stuff/\[UNI\]'
alias myrepos='~/Stuff/My-Repos'
# custom konsole titles using 'title' function
# title(){echo$'\033]30;'$*$'\007'}

# #----Some more settings----

# # case insensitive cd
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit # also used for compdef

# #--- custom functions ---
d() {$* & disown}
compdef d=exec
export PATH="$PATH:$HOME/.spicetify"

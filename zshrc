export ZSH=$HOME/.oh-my-zsh
export FZF_DEFAULT_COMMAND="fd . $HOME"
ZSH_THEME="agnoster"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
plugins=(
        git
        colored-man-pages
        zsh-autosuggestions
        zsh-completions
        zsh-syntax-highlighting
    )
    autoload -U compinit && compinit
    zstyle ':completion:*' auto-description 'specify: %d'
    zstyle ':completion:*' completer _expand _complete _correct _approximate
    zstyle ':completion:*' format 'Completing %d'
    zstyle ':completion:*' group-name ''
    zstyle ':completion:*' menu select=2
    zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
    zstyle ':completion:*' list-colors ''
    zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
    zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
    zstyle ':completion:*' menu select=long
    zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
    zstyle ':completion:*' use-compctl false
    zstyle ':completion:*' verbose true
    zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
    zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/darthnoward/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/darthnoward/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/darthnoward/anaconda3/etc/profile.d/conda.sh"
    else
        \export PATH="/Users/darthnoward/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
alias ut="chrome-cli open https://www.youtube.com/feed/subscriptions && chrome-cli position 0 23 && chrome-cli size 1440 877"
alias cpu="sh /usr/local/bin/cpu"
alias sc="fzf | xargs open"
alias tg="telegramtui; clear"
alias alfile="sftp root@45.32.114.223"
alias theone="clear && cmatrix"
alias e="exit"
alias q="exit"
alias :q="exit"
alias iloveu="echo I Know | lolcat"
alias ack='ack --color-filename=cyan --color-match=red --ignore-dir={.bzr,CVS,.git,.hg,.svn}'
alias mkdir="mkdir -p"
alias watchstarwars='telnet towel.blinkenlights.nl'
alias givemeafortune="fortune | cowsay | lolcat"
alias alf='ssh -Y root@45.32.114.223'
alias datarecord="clear && cat ~/.data_record"
alias ls='ls -GF'
alias checkdata='clear && vultr server show 27165098 | grep Cur | cowsay | lolcat'
alias py="clear && python && clear"
export VULTR_API_KEY=SRN4ENTX72PKQXM4K5RCXQHGEDCEVJVDIAGA
RED="\033[0;31m"
NC="\033[0;37m"
alias mac="neofetch"
alias top='htop'
alias update="clear; echo -e '${RED}Starting to update packages...${NC}' && brew update; brew upgrade; brew cask upgrade; clear ; brew cleanup; sudo updatedb; echo -e '${RED}\tDone!${NC}'"
source ~/.iterm2_shell_integration.zsh
alias vi='open -a MacVim'
alias note='clear && echo -e "${RED}Jupyter Notebook Initializing...\nRunning in Firefox...\n${NC}" && jupyter-notebook'
export PATH="/usr/local/sbin:$PATH"
source $ZSH/oh-my-zsh.sh
AGNOSTER_GIT_DIRTY_BG=red
export FZF_DEFAULT_COMMAND="fd . $HOME"
export LDFLAGS="-L/usr/local/opt/openblas/lib"
export CPPFLAGS="-I/usr/local/opt/openblas/include"
export PKG_CONFIG_PATH="/usr/local/opt/openblas/lib/pkgconfig"

wm
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
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

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
plugins=(git zsh-autosuggestions zsh-syntax-highlighting sudo)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export PATH=$PATH:/opt/4rji/bin
alias bypass='oobe\BypassNRO'
alias cat='/bin/batcat --paging=never --pager=none --style=plain -l rb'
alias ls='ls --color'
alias v='nvim'
alias lss="sudo du -sh * 2>/dev/null | sort -h"
alias fd='fdfind'
alias youdown='yt-dlp -S res,ext:mp4:m4a'
alias ufws='sudo ufw status'
alias ufwe='sudo ufw enable'
alias ufwa='sudo ufw allow'
alias ufwr='sudo ufw reload'
alias ufwn='sudo ufw status numbered'
alias c1='git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k'
alias c2='sed -i "s/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"powerlevel10k\/powerlevel10k\"/" ~/.zshrc'
alias c3='sed -i "s/plugins=(git zsh-autosuggestions zsh-syntax-highlighting sudo)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting sudo)/" ~/.zshrc'
alias c4='git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions'
alias c5='git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting'
alias kaliefi='distrobox-ephemeral create --name kali-efimero --image docker.io/kalilinux/kali-rolling:latest'
alias dise='distrobox enter '
alias disr='distrobox rm  '
alias rs2='sudo nano /etc/rsyslog.conf'
alias f2mod='sudo nano /etc/fail2ban/jail.local'
alias f2r='sudo systemctl restart fail2ban'
alias f2s='sudo systemctl status fail2ban'
alias kalideb='sudo cp /etc/apt/sources.list.kali /etc/apt/sources.list'
alias nokali='sudo cp /etc/apt/sources.list.debian /etc/apt/sources.list'
alias i='sudo apt install'
alias bas='nano ~/.zshrc'
alias basrc='source ~/.zshrc'
alias folder='cd /home/natasha/MaquinasHTB/'
alias apu='sudo apt update && sudo apt upgrade'
alias pg='ping 8.8.8.8 -c4'
alias pg1='ping 1.1.1.1 -c4'
alias kittyconf='nano ~/.config/kitty/kitty.conf'
alias acceder='echo marca de la lavadora mayusculas y segundo renglon la letra c mas mi numero'
alias ssk='kitty +kitten ssh '
alias sssh='ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no '
alias scpp='scp -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no '
alias lockf='i3lock-fancy '
alias ansipl='ansible-playbook -i /home/natasha/.ssh/ansible_hosts '
alias f2r='sudo systemctl restart fail2ban'
alias f2r='sudo systemctl restart fail2ban'
alias f2s='sudo systemctl status fail2ban'
alias ippp='curl ifconfig.me'
alias surfeando='sudo anonsurf start'
alias shortc='nano ~/.config/sxhkd/sxhkdrc'
alias tailscaleinst='curl -fsSL https://tailscale.com/install.sh | sh'
alias tails='sudo tailscale status'
alias tailip='sudo tailscale ip'
alias vm-to='sudo apt install -y --reinstall open-vm-tools-desktop'
alias pantalla='nano ~/.config/bspwm/bspwmrc'
alias notas='ranger /home/kali/notas'
alias apagar='sudo shutdown -h now'
alias bateria-f='upower -i /org/freedesktop/UPower/devices/battery_BAT0'
alias g4rji='f(){ git clone --depth 1 https://github.com/4rji/4rji.git && cd 4rji/; unset -f f; }; f'
alias dormir='sudo systemctl suspend'
alias resta='sudo systemctl restart '
alias statt='sudo systemctl status '
alias pantallin="xrandr --output DP-1 --rotate left --auto --left-of eDP-1" 
alias vmware-tools='sudo apt install -y --reinstall open-vm-tools-desktop fuse3'
alias fixwifi='sudo wpa_supplicant -B -i wlan0 -c /etc/wpa_supplicant/wpa_supplicant.conf && sudo dhclient wlan0'
alias wse='wormhole send '
alias wre='wormhole receive '
alias target1.1='cp ~/.config/bin/bateria_backup.sh ~/.config/bin/bateria.sh '
alias jfirefox='firejail firefox '
alias sse='sudo nano /etc/ssh/sshd_config'
alias ssr='sudo systemctl restart ssh'
alias sst='sudo systemctl stop ssh'
alias blue='sudo systemctl start bluetooth.service'
alias pwndoc='cat /home/kali/Downloads/.pwndoc-main.md/pwndoc.md'
alias scanporty='python3 /usr/bin/scanporty.py'
alias itec='sudo openvpn ~/Downloads/.vpnitos/itec.ovpn'
alias 4rj='cd /home/kali/GitHub/bina/binarios'
alias clipc='history -r | head -n 1 | awk "{\$1=\"\"; print \$0}" | xclip -selection clipboard'
alias dormir='systemctl suspend'
alias nodormir='sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target'
alias matavpn='sudo killall openvpn'
alias dockercp='echo ejecutar lo siguiente: docker cp ruta/del/archivo.txt nombre_o_id_del_contenedor:/ruta/del/contenedor/'
alias osr='cat /etc/os-release'
alias chator='onionshare-cli --chat --public -v'
alias trr='trash '
alias trl='trash-list '
alias tre='trash-empty '
alias weather='curl wttr.in '
alias readme='cat /opt/4rji/bin/README.md  '
alias na='nano '
alias exitt='exiftool -all= -overwrite_original /Users/ozono/Dropbox/documentation/img/*'
alias bye='pkill -KILL -u kali'
alias byeh='hyprctl dispatch exit'
alias fakei='portspoof -c /etc/portspoof/portspoof.conf -s /etc/portspoof/portspoof_signatures'
alias ftables='sudo iptables -t nat -F'
alias tamano='du -sh '
alias archivserv='cd ~/archivebox && docker-compose up'
alias qwe='clipc && pas'
alias verlos='fzf --preview='cat {}''
alias pega='xclip -sel clip -o'
alias pegam='pbpaste'
alias copia='xclip -sel clip'
alias libreshm='sudo rm -rf /dev/shm/*'
alias nflutter='nix develop /etc/nixos#flutter --command zsh'
alias nixe='sudo nano /etc/nixos/paquetes.nix'
alias nixg='nix-collect-garbage -d'
alias nixee='sudo nano /etc/nixos/configuration.nix'
alias nixr='sudo nixos-rebuild switch'
alias kplas='kex --esm --wtstart --desktop plasma'
alias barrer='flatpak run com.github.debauchee.barrier --config /home/nala/.config/barrier.conf & disown':
alias interf='sudo nano /etc/network/interfaces'
alias tr1='traceroute 1.1.1.1'
alias trg='traceroute 8.8.8.8'
alias cdd='cd ${_%/*}'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export host_nombre='kali-4rji'


# Added by Python script


#######************* INICIO  de BASHFUN   ********************########


#to ignore close with command D
setopt ignoreeof

#nets para script nets 
export AllowedIPs=192.168.44.0/24,192.168.222.0/24,192.168.18.0/24,10.0.16.0/24,192.168.99.0/24,192.168.88.0/24,10.0.4.0/24,192.168.8.0/24,192.168.55.0/24,192.168.3.0/24,192.168.5.0/24



#alias para neovim chat, para nixos, primero instalar nix-shell -p   neovim y luego clonar   ❯ git clone https://github.com/NvChad/starter ~/.config/nvim
nv() {
  nix-shell -p neovim --run "nvim $1"
}

#para mac
function mktemm() {
    ramdisk_path="/Volumes/RAMDisk"

    # Crear RAM disk si no existe
    if [ ! -d "$ramdisk_path" ]; then
        echo "Montando RAMDisk..."
        diskutil erasevolume HFS+ RAMDisk $(hdiutil attach -nomount ram://$((4 * 1024 * 1024 * 1024 / 512))) >/dev/null
    fi

    if [ -n "$1" ]; then
        new_dir=$(mktemp -d "$ramdisk_path/tmp.$1.XXXXXX")
    else
        new_dir=$(mktemp -d "$ramdisk_path/tmp.XXXXXX")
    fi

    echo "Directorio creado en: $new_dir"
    cd "$new_dir" || return
    echo "Cambiado al directorio: $PWD"
}




#Extraer puertos para expo
function extractPorts(){
    ports="$(cat $1 | grep -oP '\d{1,5}/open' | awk '{print $1}' FS='/' | xargs | tr ' ' ',')"
    ip_address="$(cat $1 | grep -oP '\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}' | sort -u | head -n 1)"
    echo -e "\n[*] Extracting information...\n" > extractPorts.tmp
    echo -e "\t[*] IP Address: $ip_address"  >> extractPorts.tmp
    echo -e "\t[*] Open ports: $ports\n"  >> extractPorts.tmp
    echo $ports | tr -d '\n' | xclip -sel clip
    echo -e "[*] Ports copied to clipboard\n"  >> extractPorts.tmp
    cat extractPorts.tmp; rm extractPorts.tmp
}



#crea una carpeta y va a ella
mkdirr() {
    mkdir -p "$1"
    cd "$1" || return
}






#para evitar que se cierre con controld D
setopt ignoreeof


#para abrir una .app en nixos
function abrirapp {
  nix-shell -p appimage-run --run "appimage-run $*"
}





# SSH ping con detalles extendidos
function __fzf_ssh_host_search() {
  local selected host hostname port

  selected=$(
    awk '
      BEGIN { OFS=" - " }
      tolower($1)=="host" {
        if (host != "") { print host, hostname, port, user }
        host=$2; hostname=""; port=""; user=""
      }
      tolower($1)=="hostname" && NF > 1 { hostname=$2 }
      tolower($1)=="port" && NF > 1 { port=$2 }
      tolower($1)=="user" && NF > 1 { user=$2 }
      END { if (host != "") print host, hostname, port, user }
    ' ~/.ssh/config | sort | \
    fzf --tac +s --tiebreak=index --toggle-sort=ctrl-r \
      --preview '
        echo "Detalles del host:";
        echo {};
        echo;

        host=$(echo {} | awk -F " - " "{print \$1}");

        # Extraer hostname correctamente
        hostname=$(awk -v host="$host" '"'"'
          tolower($1) == "host" { in_block = ($2 == host) }
          in_block && tolower($1) == "hostname" { print $2; exit }
        '"'"' ~/.ssh/config);

        # Extraer puerto correctamente
        port=$(awk -v host="$host" '"'"'
          tolower($1) == "host" { in_block = ($2 == host) }
          in_block && tolower($1) == "port" { print $2; exit }
        '"'"' ~/.ssh/config);

        # Si no se encuentra el hostname, usar el mismo host
        if [[ -z "$hostname" ]]; then hostname="$host"; fi

        # Si no se encuentra el puerto, asumir 22
        if [[ -z "$port" ]]; then port=22; fi

        echo "Status:";
        ping -c 1 -W 1 "$hostname" > /dev/null 2>&1 && echo -e "\e[32monline\e[0m" || echo -e "\e[31moffline\e[0m";
        
        echo;
        echo "Status of port $port on $hostname:";

        if nc -zv "$hostname" "$port" 2>&1 | grep -q "succeeded"; then
          echo -e "\e[32mConnection to $hostname port $port succeeded!\e[0m"
        else
          echo -e "\e[31mConnection to $hostname port $port failed!\e[0m"
        fi
      '
  )

  if [[ -n $selected ]]; then
    host=$(echo "$selected" | awk -F ' - ' '{print $1}')
    ssh "$host" < /dev/tty
  fi
}

# En Zsh, registra el widget y asigna la combinación de teclas
zle -N __fzf_ssh_host_search
bindkey '^S' __fzf_ssh_host_search






function mktem() {
    if [ -n "$1" ]; then
        new_dir=$(mktemp -d /dev/shm/tmp."$1".XXXXXX)
    else
        new_dir=$(mktemp -d /dev/shm/tmp.XXXXXX)
    fi
    echo "Directorio creado en: $new_dir"
    cd "$new_dir" || return
    echo "Cambiado al directorio: $PWD"
}

function mktem2() {
    if [ -n "$1" ]; then
        new_dir=$(mktemp -d /tmp/tmp."$1".XXXXXX)
    else
        new_dir=$(mktemp -d /tmp/tmp.XXXXXX)
    fi
    echo "Directorio creado en: $new_dir"
    cd "$new_dir" || return
    echo "Cambiado al directorio: $PWD"
}

function __fzf_history_search() {
  local selected
  selected=$(
    # 1) saca listas sin números, cronológico
    fc -l -n 1 |
    # 2) pásalo a fzf con tu buffer como query inicial
    fzf -x --tiebreak=index --toggle-sort=ctrl-r --query="$LBUFFER"
  )
  if [[ -n $selected ]]; then
    LBUFFER="$selected"
    RBUFFER=""
  fi
  zle reset-prompt
}
zle -N __fzf_history_search
bindkey '^R' __fzf_history_search




function fzf-lovely(){
    if [ "$1" = "h" ]; then
        fzf -m --reverse --preview-window down:20 --preview '[[ $(file --mime {}) =~ binary ]] &&
                echo {} is a binary file ||
                (bat --style=numbers --color=always {} ||
                 highlight -O ansi -l {} ||
                 coderay {} ||
                 rougify {} ||
                 cat {}) 2> /dev/null | head -500'
    else
        fzf -m --preview '[[ $(file --mime {}) =~ binary ]] &&
                echo {} is a binary file ||
                (bat --style=numbers --color=always {} ||
                 highlight -O ansi -l {} ||
                 coderay {} ||
                 rougify {} ||
                 cat {}) 2> /dev/null | head -500'
    fi
}

function goo() {
    google-chrome-stable "$1" & disown
}

function sshproxy() {
    ssh -D 1080 -C -q -N "$@" &
}

#descontinuado por grc
#function T() {
 #   local temp_file=$(mktemp)
  #  "$@" | tee "$temp_file" | batcat -l rb
#}


nixs() {
  nix-shell -p zsh "$@" --run "zsh -i"
}




function htp() {
  pwd=$(pwd)
  foldername=$(basename "$pwd")
  foldername_with_extension="$foldername.md"
  resultado=$("$HOME/.config/bin/bateria.sh")
  ip=$(echo "$resultado" | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b")
  echo "Definiendo las siguientes variables:"
  echo "export htf=\"$pwd/$foldername_with_extension\""
  echo "export htcon=\"$pwd\""
  echo "export ip=\"$ip\""
}

function rmk(){
        scrub -p dod $1
        shred -zun 10 -v $1
}

loop() {
    echo "Enter the commands to execute in the loop. Type 'done' to finish."
    
    local commands=()
    
    while true; do
        read "cmd?Command: "
        if [[ "$cmd" == "done" ]]; then
            break
        fi
        commands+=("$cmd")
    done
    
    while true; do
        for cmd in "${commands[@]}"; do
            eval "$cmd"
        done
    done
}



#Muestra el ultimo comando con colores con bat 
function coll() {
    # Obtener el último comando del historial excluyendo números de línea y espacios iniciales
    local cmd=$(fc -ln -1 | sed 's/^[[:space:]]*//')

    # Crear un archivo temporal para guardar el comando
    local temp_file=$(mktemp)

    # Escribir el comando en el archivo temporal
    echo $cmd > "$temp_file"

    # Ejecutar el comando y usar 'tee' para duplicar la salida y 'batcat' para visualizarla
    eval $cmd | tee "$temp_file" | /bin/batcat --paging=never --pager=none --style=plain -l rb
}

#usa grc para mostrar color, instalar grc
# grcc: extrae el último comando y lo pone prefijado con grc en la línea
T(){
  local last=$(fc -ln -1)
  print -z -- "grc $last"
}



#limpia el archivo que genera sshmoni para ver las conexiones ssh y tcp de nc
#mas bien limpia ls de lsof, generadas lsof -Pin, sin la n,  muestra dominios
lsofmoni() {
    if [ -z "$1" ]; then
        echo "Usage: archivo <file>"
        return 1
    fi

    if [ ! -f "$1" ]; then
        echo "Error: File '$1' not found."
        return 1
    fi

    awk '/ESTABLISHED/ || /Connection/' "$1" | sort | uniq | grep -vi "other"
}


#######************* INICIO  de ZSHCONFIG   ********************########

# Fix the Java Problem
#export _JAVA_AWT_WM_NONREPARENTING=1

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e


zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'



bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3~" delete-char
bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word



# Load completions
autoload -Uz compinit && compinit

# Keybindings
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey '^[w' kill-region

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
#zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'


# Shell integrations
#eval "$(fzf --zsh)"
#eval "$(zoxide init --cmd cd zsh)"



    

# --- setup fzf theme ---
fg="#CBE0F0"
bg="#011628"
bg_highlight="#143652"
purple="#B388FF"
blue="#06BCE4"
cyan="#2CF9ED"
    

export FZF_DEFAULT_OPTS="
  --height 80% 
  --border 
  --preview-window=right:50% 
  --reverse 
  --info=inline 
  --prompt='> ' 
  --pointer='▶' 
  --marker='✔' 
  --color=fg:#CBE0F0,bg:#011628,hl:#B388FF,fg+:#CBE0F0,bg+:#143652,hl+:#B388FF,info:#06BCE4,prompt:#2CF9ED,pointer:#FF0055"



export FZF_CTRL_T_OPTS="--preview 'bat -n --color=always --line-range :500 {}'"
#para mac solo . no encontre en linux eza
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"

_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf --preview 'eza --tree --color=always {} | head -200' "$@" ;;
    export|unset) fzf --preview "eval 'echo $'{}"         "$@" ;;
    ssh)          fzf --preview 'dig {}'                   "$@" ;;
    *)            fzf --preview "bat -n --color=always --line-range :500 {}" "$@" ;;
  esac
}





export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
alias amiga='source ~/.amigo/bin/activate'
alias syncssh='cp ~/.ssh/config /Users/ozono/GitHub/dotfiles/config'





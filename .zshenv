#
# Defines environment variables.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#
#
export VMWARE_USE_SHIPPED_LIBS='yes'
# for GTK styles in Qt
export GTK2_RC_FILES=$HOME/.gtkrc-2.0
export GTK_PATH=:/usr/lib/gtk-2.0
# hacks to respect XDG_CACHE_HOME
export CCACHE_DIR="$HOME/.ccache"
export CCACHE_PATH="/usr/bin/"
export CCACHE_TEMPDIR="$HOME/.ccache"
export USE_CCACHE=1
#
CHROOT=$HOME/chroot
export GOPATH=$HOME/go
export PYTHONSTARTUP=$HOME/.pythonrc
export GEM_PATH=$HOME/.gem/ruby/2.3.0/bin
export GEM_HOME=$HOME/.gem/ruby/2.3.0/
export ANDROID_HOME=/opt/android-sdk
[[ -d $(ruby -rubygems -e "puts Gem.user_dir")/bin ]] && export PATH=$PATH:$(ruby -rubygems -e "puts Gem.user_dir")/bin
export GNUPGHOME="/home/wolf/.gnupg"
export LESS="-R"
export MOZ_DISABLE_PANGO=1
export PYTHONDOCS=/usr/share/doc/python/html
export PROJECT_HOME="$HOME/code/python"
export TERM="rxvt-256color"
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export VDPAU_DRIVER=r300
export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig/:$PKG_CONFIG_PATH"
export LIBVA_DRIVER_NAME=vdpau
alias ifconfig='grcc ifconfig'
alias netstat='grcc netstat'
alias traceroute='grcc traceroute'
alias diff='grcc diff'
alias df='grcc df'
alias ping='grcc ping'
alias ps='grcc ps'
alias proftpd='grcc proftpd'
alias wdiff='grcc wdiff'
alias mount='grcc mount'
alias dig='grcc dig'
alias httpserve='python2 -m SimpleHTTPServer'
alias pcat='pygmentize -g'
alias hcat='highlight -O ansi'
alias wget="wget -c"
alias x="startx"
alias restmux="systemctl --user restart tmux"
alias cp="cp -g"
alias mv="mv -g"
alias httpsocks5="export http_proxy=socks5://127.0.0.1:3333 https_proxy=socks5://127.0.0.1:3333"
alias shred="shred -uzfv -n 30"
alias q="exit"
alias music="ncmpcpp"
alias yt="youtube-viewer"
alias grep="grep --color=always"
alias ix="curl -n -F 'f:1=<-' http://ix.io"
alias sprunge="curl -F 'sprunge=<-' http://sprunge.us"
alias dir="ls"
alias ls="ls -hF --color=auto --group-directories-first"
alias l="la"
alias sl="ls -hF --color=auto --group-directories-first"
alias ll="ls++ --potsf -a"
alias la="ls -a --color=auto --group-directories-first"
alias lsp="ls++"
alias -g L='| less'
alias -g G='| grep'
alias mysshshell="sshpass -p `cat ~/.sshpass` ssh -L 6667:localhost:3333 root@`cat ~/.sship` -p 2207"
alias udcli="udcli -32 -x"
alias resdnstat="sudo systemctl status dnscrypt-proxy.service unbound.service"
alias ytdown="youtube-dl"
alias clearman="bleachbit"
alias sysup='sudo sysup'
alias qe="qemu-system-x86_64 -enable-kvm"
alias envpy2="workon wolf"
alias disks='echo "╓───── m o u n t . p o i n t s"; echo "╙────────────────────────────────────── ─ ─ "; grcc lsblk -a; echo ""; echo "╓───── d i s k . u s a g e"; echo "╙────────────────────────────────────── ─ ─ "; df -h;'
alias makepkg="nice -19 makepkg"
alias du="du -hs"
alias init-tor="proxychains -q w3m http://kpvz7ki2v5agwt35.onion -no-cookie -graph -N"
alias attacks1="chromium --app=http://map.norsecorp.com/"
alias attacks2="chromium --app=http://www.digitalattackmap.com/"
alias shutdown="systemctl poweroff -i"
alias suspend="systemctl suspend"
alias hibernate="systemctl hibernate"
alias sumcontrol="sha256sum -c  < ~/code/systemsums.txt |grep FAILED"
alias snapconsole="sudo snapconsole"
alias passgen="< /dev/urandom tr -cd \[:graph:\] | fold -w 30 | head -n 1"
alias -g ./configure="grcc ./configure"
alias make="grcc make"
alias vime='vim -u $HOME/.vimencrypt -x'
alias gvime='gvim -u $HOME/.vimencrypt -x'
alias nv='nvim'
alias nview='nvim -R'
#alias rake="bundle exec rake"
# rvm
# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

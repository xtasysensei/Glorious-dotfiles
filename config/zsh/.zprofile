# Define default applications
export TERMINAL="tilix"
export EDITOR="nvim"
export BROWSER="firefox"
export READER="zathura"

export HISTFILE=~/.config/zsh/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# Default directories in compliance with XDG standards
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_RUNTIME_DIR="/run/user/$(id -u)"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export XAUTHORITY="$XDG_DATA_HOME/Xauthority"
export GRADLE_USER_HOME="$XDG_DATA_HOME/gradle"
export WEECHAT_HOME="$XDG_CONFIG_HOME/weechat"
export NOTMUCH_CONFIG="$XDG_CONFIG_HOME/notmuch/config"
export GOPATH="$XDG_DATA_HOME/go"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export MYSQL_HISTFILE="$XDG_DATA_HOME/mysql_history"
export PSQLRC="$XDG_CONFIG_HOME/pg/psqlrc"
export PGPASSFILE="$XDG_CONFIG_HOME/pg/pgpass"
export PGSERVICEFILE="$XDG_CONFIG_HOME/pg/pg_service.conf"
export PSQL_HISTORY="$XDG_CACHE_HOME/pg/psql_history"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/pass"
export IPYTHONDIR="$XDG_CONFIG_HOME/ipython"
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME/jupyter"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
export N_PREFIX="$HOME/.local/n"
export N_PRESERVE_NPM=1
# export RXVT_SOCKET="$XDG_RUNTIME_DIR/urxvtd"
# export URXVT_PERL_LIB="$XDG_DATA_HOME/urxvt/perl"
export W3M_DIR="$XDG_DATA_HOME"/w3m
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc
export ICEAUTHORITY="$XDG_CACHE_HOME"/ICEauthority




# Flutter/Android default directories
export FLUTTER_ROOT="$HOME/.flutter"
export ANDROID_SDK_ROOT="$HOME/Android/Sdk"

# Defines location for mpd socket
export MPD_HOST="$XDG_DATA_HOME/mpd/socket"

# Disables less history file
export LESSHISTFILE=/dev/null

# nnn configuration
export NNN_OPTS=eox
export NNN_COLORS='3333'
export NNN_FCOLORS='050503040006060801020201'
export NNN_BMS='h:~;m:/run/media/nate/;t:~/.local/share/Trash/files/;'
export NNN_OPENER=xdg-open
export NNN_TRASH=1

# Set bat highlighting colour theme
export BAT_THEME="base16"

# Define Chromium executable
export CHROME_EXECUTABLE="/usr/bin/chromium"

# Define PATH
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/bin/dwmblocks:$PATH"
export PATH=~/.config/emacs/bin:$PATH
export PATH="$N_PREFIX/bin:$PATH"
export PATH="$FLUTTER_ROOT/bin:$PATH"
export PATH="$ANDROID_SDK_ROOT/platform-tools:$PATH"
export PATH="$ANDROID_SDK_ROOT/tools:$PATH"
export PATH="$ANDROID_SDK_ROOT/tools/bin:$PATH"
export PATH="$ANDROID_SDK_ROOT/emulator:$PATH"
export PATH="$ANDROID_SDK_ROOT/cmdline-tools/latest/bin/:$PATH"


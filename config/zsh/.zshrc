setopt prompt_subst
setopt always_to_end
setopt append_history
setopt auto_menu
setopt complete_in_word
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history
setopt hist_find_no_dups

autoload -Uz compinit 
if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
    compinit;
else
    compinit -C;
fi;

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b'
zstyle ':completion:*' menu select

source ~/.config/zsh/plugins/geometry/geometry.zsh
source ~/.config/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source ~/.config/zsh/plugins/zsh-abbr/zsh-abbr.plugin.zsh
#source ~/.config/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.plugin.zsh
#source ~/.config/zsh/plugins/cmdtime/cmdtime.plugin.zsh
#source ~/.config/zsh/plugins/nice-exit-code/nice-exit-code.plugin.zsh

#bindkey '^[[A' history-substring-search-up
#bindkey '^[[B' history-substring-search-down

function parse_git_dirty {
  STATUS="$(git status 2> /dev/null)"
  if [[ $? -ne 0 ]]; then printf ""; return; else printf " ["; fi
  if echo "${STATUS}" | grep -c "renamed:"         &> /dev/null; then printf " >"; else printf ""; fi
  if echo "${STATUS}" | grep -c "branch is ahead:" &> /dev/null; then printf " !"; else printf ""; fi
  if echo "${STATUS}" | grep -c "new file::"       &> /dev/null; then printf " +"; else printf ""; fi
  if echo "${STATUS}" | grep -c "Untracked files:" &> /dev/null; then printf " ?"; else printf ""; fi
  if echo "${STATUS}" | grep -c "modified:"        &> /dev/null; then printf " *"; else printf ""; fi
  if echo "${STATUS}" | grep -c "deleted:"         &> /dev/null; then printf " -"; else printf ""; fi
  printf " ]"
}

prompt_pwd () {
    echo "${PWD/#$HOME/~}" | sed -e 's-\(\.*[^/]\)[^/]*/-\1/-g'
}

#PROMPT='%B%F{001}$(nice_exit_code)%B%F{blue}$(prompt_pwd)%f%b%B%F{004}▲ '
#RPROMPT='%B%F{00u4}${vcs_info_msg_0_}%F{003}$(parse_git_dirty)%f%b'

eval "$(zoxide init zsh)"
eval "$(atuin init zsh)"

alias ls='exa --icons -a'
alias cat='bat'
alias cd='z'
alias vim='nvim'
alias grep='rg'
alias emacs='emacsclient -c'
alias mv='advmv -g'
alias cp='advcp -g'
alias cp='bash /usr/local/bin/zfetch'
alias music='tmux new-session -s $$ "tmux source-file ~/.config/tsession"'

# Geometry configs
GEOMETRY_PROMPT=(geometry_path_too geometry_status) # redefine left prompt

ex ()
{
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1   ;;
        *.tar.gz)    tar xzf $1   ;;
        *.bz2)       bunzip2 $1   ;;
        *.rar)       unrar x $1   ;;
        *.gz)        gunzip $1    ;;
        *.tar)       tar xf $1    ;;
        *.tbz2)      tar xjf $1   ;;
        *.tgz)       tar xzf $1   ;;
        *.zip)       unzip $1     ;;
        *.Z)         uncompress $1;;
        *.7z)        7za e x $1   ;;
        *.deb)       ar x $1      ;;
        *.tar.xz)    tar xf $1    ;;
        *.tar.zst)   unzstd $1    ;;
        *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# bash insult
if [ -f /etc/bash.command-not-found ]; then
    . /etc/bash.command-not-found
fi

# shell functions
if [ -f ~/.config/zsh/functions/shell_functions ]; then
    . ~/.config/zsh/functions/shell_functions
fi

# ------------- History -------------------------

export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history

# Avoid duplicates
export HISTCONTROL=ignoredups:erasedups  
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend

# After each command, append to the history file and reread it
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

# ---------------------------------------------

alias chaos="ssh chaos"
alias gaia="ssh gaia"
alias zelos="ssh zelos"
alias tethys="ssh tethys"
alias iris="ssh iris"
alias pandora="ssh pandora"
alias ladon="ssh ladon"
alias heracles="ssh heracles"
alias zeus="ssh root@zeus"
alias artemis="ssh artemis"
alias lla="ls -lah"
alias st="sudo ntpdate pool.ntp.org"
alias www="cd /var/www/"
alias codefortune="fgrep '/* ' /usr/src/linux* -r | cut -d '*' -f 2 | head -$((RANDOM)) | tail -1"
alias ldir="ls -l | grep "^d" | awk '{print $9}'"

# Include custom host specific bash aliases
if [ -f ~/.bash_aliases_custom ]; then
    . ~/.bash_aliases_custom
fi

function jrnl {
  ssh xmbomb@192.168.1.8 "/usr/local/bin/jrnl \"$@\"; "&&
  ssh xmbomb@192.168.1.8 "/usr/local/bin/jrnl --export json -o /mnt/zmain/Work/Journal/manager/export.json;";
}

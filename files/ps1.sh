if [[ $EUID -eq 0 ]]; then
  export PROMPT_COMMAND='export PS1="${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u@\[\033[01;36m\]$(hostname -f)\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "'
else
  export PROMPT_COMMAND='export PS1="${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\[\033[01;36m\]$(hostname -f)\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "'
fi

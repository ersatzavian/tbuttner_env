
# Source this file from c/Program\ Files/Git/etc/profile
# Probably also change your git bash $HOME TO /c/Users/<user>

alias cdprofile='cd /c/Program\ Files/Git/etc'

# SSH-AGENT STARTER ----------------------------------
env=~/.ssh/agent.env

agent_load_env () { test -f "$env" && . "$env" >| /dev/null ; }

agent_start () {
    (umask 077; ssh-agent >| "$env")
    . "$env" >| /dev/null ; }

agent_load_env

# agent_run_state: 0=agent running w/ key; 1=agent w/o key; 2= agent not running
agent_run_state=$(ssh-add -l >| /dev/null 2>&1; echo $?)

if [ ! "$SSH_AUTH_SOCK" ] || [ $agent_run_state = 2 ]; then
    agent_start
    ssh-add
elif [ "$SSH_AUTH_SOCK" ] && [ $agent_run_state = 1 ]; then
    ssh-add
fi

unset env

#------------------------------------------------------

# terminal
alias ll='ls -al'

# github
alias gs='git status'
alias gxo='git checkout'
alias gp='git pull'
alias gph='git push'
alias gphm='git push origin master'
alias ga='git add'
alias gaa='git add -A'
alias gc='git commit'

# Vim stuff -------------------------------------------
# 1. Copy .vimrc to $HOME/.vimrc
# 2. Create $HOME/.vim_runtime/
# 3. Copy *.vim to $HOME/.vim_runtime/vimrcs
# 4. Install Pathogen:
# mkdir -p ~/.vim/autoload ~/.vim/bundle && \
# curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

export PS1="\e[0;36m[\u@\h \w]\$ \e[0m"
export LS_COLORS="di=0;35"

alias ls="ls --color=auto"

# Firefox
alias netflix="firefox -P normie --new-tab https://netflix.com"
alias discord="firefox -P schizo --new-tab https://discord.com/"

# ~/.rc Files
alias vimrc="vim ~/.vimrc"
alias zshrc="sudo vim ~/.zshrc"
alias makeconf="sudo vim /etc/portage/make.conf"

# shortened commands
alias bp="bpytop"
alias c="clear"
alias neo="neofetch"
alias random="dd if=/dev/urandom count=1 bs=3 > /dev/null 2>&1 | sha512sum"

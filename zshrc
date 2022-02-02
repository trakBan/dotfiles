# Sets color
PROMPT='%F{15}%n%F{12}@%F{15}%m:%F{12}%d$ %F{reset}'

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

# Games
alias factorio="sh ~/torrent/Factorio.1.1.38.b58907/start.sh"

# Gentoo update script
alias update='cd ~/; echo "sudo emaint -a sync;sudo emerge --verbose --update --deep --newuse @world;sudo emerge --verbose --depclean" >> updatesh.sh; sudo su'
# Because of sudo su you need to execute : sh updatesh.sh

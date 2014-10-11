# Top-level stuff
alias cls="clear"
alias reload!=". ~/.zshrc"

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# Shortcuts to make life easier
alias d="cd ~/Do"
alias dbs="cd ~/Do/BS*"
alias dgr="cd ~/Do/gri*"
alias dot="cd ~/.dotfiles"
alias dp="cd ~/Dropbox"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias p="cd ~/Projects"
alias h="history"
alias j="jobs"

# App Shortcuts to make life easier
alias actmo="open /Applications/Utilities/Activity\ Monitor.app"
alias itunes="open /Applications/iTunes.app"
alias rdio="open /Applications/Rdio.app"

# Get all bukk.it images
alias bukkit="wget -r -nc --user-agent="" -e robots=off --wait 0.25 -A.jpeg,jpg,bmp,gif,png -P ~/Dropbox/IMGs http://bukk.it"

# Unicode emotions; WHY DO I HAVE THESE FEELS!?
alias srs="echo '\n ಠ_ಠ\n' | pbcopy"
alias srsheh="echo '\n ಠ‿ಠ\n' | pbcopy"
alias srsmad="echo '\n ಠ▃ಠ\n' | pbcopy"
alias srswha="echo '\n ಠ.ಠ\n' | pbcopy"
alias flip="echo '\n（╯°□°）╯︵ ┻━┻\n' | pbcopy"
alias flipsrs="echo '\n（╯ಠ▃ಠ）╯︵ ┻━┻\n' | pbcopy"
alias flipfix="echo '\n（┬──┬ ノ( ゜-゜ノ)\n' | pbcopy"
alias crysrs="echo '\n ಥ_ಥ\n' | pbcopy"
alias crywobble="echo '\n ಥ﹏ಥ\n' | pbcopy"
alias yeaaaaaah="echo '\n •_•)\n( •_•)>⌐■-■\n(⌐■_■)\n' | pbcopy"
alias hay="echo '( '３' )ノ' | pbcopy"


# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip_wifi="ipconfig getifaddr en0"
alias localip_display="ipconfig getifaddr en2"
alias ips="ifconfig -a | grep -o 'inet6\? \(\([0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\)\|[a-fA-F0-9:]\+\)' | sed -e 's/inet6* //'"

# Enhanced WHOIS lookups
# alias whois="whois -h whois-servers.net"

# Flush Directory Service cache
alias flush="dscacheutil -flushcache"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# Recursively delete `.DS_Store` files
alias ds_nomore="find . -type f -name '*.DS_Store' -ls -delete"

# ROT13-encode text. Works for decoding, too! ;)
alias rot13="tr a-zA-Z n-za-mN-ZA-M"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.Finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.Finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Let's update all the things (OS X, Homebrew, Ruby Gems, npm)
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; gem update --system; gem update; npm update npm -g; npm update -g'

# Change dock position (top - middle - bottom)
alias docktop="defaults write com.apple.dock pinning -string start"
alias dockmiddle="defaults write com.apple.dock pinning -string middle"
alias dockbottom="defaults write com.apple.dock pinning -string end"

# For those times when you just don't look busy enough
alias busy="export GREP_COLOR='1;32'; cat /dev/urandom | hexdump -C | grep --color=auto \"ca fe\""

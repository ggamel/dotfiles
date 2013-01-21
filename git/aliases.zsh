export GHI_PAGER=less
export GIT_SANDBOX=~/Do/sandbox
export GIT_MERGE_AUTOEDIT=no

# tl;dr hub is better than vanilla git
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi
# make g alias git, which is actually hub: less typing
alias g='git'


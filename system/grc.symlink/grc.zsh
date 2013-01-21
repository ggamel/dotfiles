# Check for brew and grc
if [[ -f `command -v brew` ]]; then
  grc_conf="`brew --prefix grc`/etc/grc.bashrc"
  if [[ -f $grc_conf ]]; then
    source $grc_conf
    alias curl='colourify curl -s'
  fi
fi

# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias l="gls -lAhF --color=auto"
  alias ls="gls -F --color=auto"
  alias ll="gls -lF --color=auto"
  alias la="gls -AF --color=auto"
fi

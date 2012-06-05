# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias l="gls -lAhF --color"
  alias ls="gls -F --color"
  alias ll="gls -lF --color"
  alias la='gls -AF --color'
fi
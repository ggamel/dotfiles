# Taken from https://github.com/sstephenson/rbenv/blob/master/completions/rbenv.zsh

if [[ ! -o interactive ]]; then
    return
fi

compctl -K _rbenv rbenv

_rbenv() {
  local words completions
  read -cA words

  if [ "${#words}" -eq 2 ]; then
    completions="$(rbenv commands)"
  else
    completions="$(rbenv completions ${words[2,-1]})"
  fi

  reply=("${(ps:\n:)completions}")
}
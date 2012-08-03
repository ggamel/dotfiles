# From http://scottlab.ucsc.edu/xtal/sample.zshrc
# Works in Terminal AND iTerm2
function set_title_tab {
  function settab   {
    if [[ $TERM_PROGRAM == iTerm.app && -z "$KONSOLE_DCOP_SESSION" ]];then
      tab_label="$PWD:h:t/$PWD:t"
      rlength="20"
      echo -ne "\e]1;${(l:rlength:)tab_label}\a"
    else
      tab_label="$PWD:h:t/$PWD:t"
      rlength="20"
      if [[ -n "$KONSOLE_DCOP_SESSION" && ( -x $(which dcop)  )  ]];then
        dcop "$KONSOLE_DCOP_SESSION" renameSession "${(l:rlength:)tab_label}"
      else
      : # do nothing if tabs don't exist
    fi
  fi
  }
  function settitle   {
    title_lab=$PWD
    echo -ne "\e]2;$title_lab\a"
  }
  function title_tab_chpwd { settab ; settitle }
  title_tab_chpwd
  if [[ "$TERM_PROGRAM" == "iTerm.app" ]];then
    function title_tab_preexec {  echo -ne "\e]1; $(history $HISTCMD | cut -b7- ) \a"  }
    function title_tab_precmd  { settab }
  else
    function title_tab_preexec {  echo -ne "\e]2; $(history $HISTCMD | cut -b7- ) \a"  }
    function title_tab_precmd  { settitle }
  fi
}
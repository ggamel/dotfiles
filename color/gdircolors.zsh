# Gdircolors ZSH Coloring Magic
# ggamel (http://github.com/ggamel)
#
# This file should cause ZSH to load
# Solarized Dark into your terminal
# session.
#
# Remember: You need to have coreutils installed
# in order to use 'gls'. Assuming you have homebrew 
# installed, run the following to get the party started:
# ( 'brew install coreutils' )
#
# Alias dircolors to gdircolors
alias dircolors="gdircolors"

# We need to run this command to ensure
# ZSH and GNU dircolors ('gdircolors' cmd)
# properly load the Solarized GNU ls ('gls' cmd) color
# database file. The color scheme is stored in a database
# file readable by GNU dircolors.
#
# Credit for the Solarized Dark color database goes to
# seebi: https://github.com/seebi/dircolors-solarized
# 
# This step is necessary because Solarized for Terminal or iTerm2
# is fantastic, but both 'ls' and 'gls' produce horrible shades
# of grey, instead of nice colors. 
# By loading the database file, we have an even
# better terminal experience.
eval `dircolors ~/.dotfiles/color/.dircolors`
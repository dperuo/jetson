# jetson.sh
# Copywright 2015 Derek Peruo
# Released under the MIT license
#
# http://github.com/dperuo
#

#!/usr/bin/env bash

# Color Variables
r='\033[0;31m'  # Red
g='\033[0;32m'  # Green
y='\033[0;33m'  # Yellow
nc='\033[0m'    # No Color

# String Variables
yep='✔'
nope='✘'
installed="${g}${yep} Installed"
notInstalled="${r}${nope} Not Installed"
checkingFor="${y}Checking for"

# Apps To Install
apps=($(cat ./apps.txt))
toInstall=()

for app in ${apps[@]}; do
  printf "${checkingFor} ${app}... "

  if which $app > /dev/null; then
    printf "${installed}${nc}\n"
  else
    printf "${notInstalled}${nc}\n" && toInstall+=($app)
  fi
done
unset app

echo "\n${y}Installing ${toInstall[@]}...\n"

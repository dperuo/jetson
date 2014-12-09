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
installed="${g}${yep} Installed\n"
notInstalled="${r}${nope} Not Installed\n"
checkingFor="${y}Checking for"


printf "${checkingFor} node... "      && which node > /dev/null     && printf "${installed}" || printf "${notInstalled}"
printf "${checkingFor} npm... "       && which npm > /dev/null      && printf "${installed}" || printf "${notInstalled}"
printf "${checkingFor} bower... "     && which bower > /dev/null    && printf "${installed}" || printf "${notInstalled}"
printf "${checkingFor} yeoman... "    && which yo > /dev/null       && printf "${installed}" || printf "${notInstalled}"
printf "${checkingFor} httpster... "  && which httpster > /dev/null && printf "${installed}" || printf "${notInstalled}"
printf "${checkingFor} puer... "      && which puer > /dev/null     && printf "${installed}" || printf "${notInstalled}"


# npm -g install bower
# npm -g install yo
# npm -g install httpster
# npm -g install puer

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

# Installers
printf "${checkingFor} node... "      && which node > /dev/null     && printf "${installed}" || printf "${notInstalled}"
printf "${checkingFor} npm... "       && which npm > /dev/null      && printf "${installed}" || printf "${notInstalled}"
printf "${checkingFor} bower... "     && which bower > /dev/null    && printf "${installed}" || printf "${notInstalled}"
printf "${checkingFor} homebrew... "  && which brew > /dev/null     && printf "${installed}" || printf "${notInstalled}"
printf "${checkingFor} ruby... "      && which ruby > /dev/null     && printf "${installed}" || printf "${notInstalled}"

# Packages
printf "${checkingFor} browserify... " && which browserify > /dev/null && printf "${installed}" || printf "${notInstalled}"
printf "${checkingFor} compass... "    && which compass > /dev/null    && printf "${installed}" || printf "${notInstalled}"
printf "${checkingFor} cvs... "        && which cvs > /dev/null        && printf "${installed}" || printf "${notInstalled}"
printf "${checkingFor} grunt... "      && which grunt > /dev/null      && printf "${installed}" || printf "${notInstalled}"
printf "${checkingFor} gulp... "       && which gulp > /dev/null       && printf "${installed}" || printf "${notInstalled}"
printf "${checkingFor} homebrew... "   && which brew > /dev/null       && printf "${installed}" || printf "${notInstalled}"
printf "${checkingFor} httpster... "   && which httpster > /dev/null   && printf "${installed}" || printf "${notInstalled}"
printf "${checkingFor} nginx... "      && which nginx > /dev/null      && printf "${installed}" || printf "${notInstalled}"
printf "${checkingFor} puer... "       && which puer > /dev/null       && printf "${installed}" || printf "${notInstalled}"
printf "${checkingFor} rails... "      && which rails > /dev/null      && printf "${installed}" || printf "${notInstalled}"
printf "${checkingFor} sass... "       && which sass > /dev/null       && printf "${installed}" || printf "${notInstalled}"
printf "${checkingFor} watchify... "   && which watchify > /dev/null   && printf "${installed}" || printf "${notInstalled}"
printf "${checkingFor} yeoman... "     && which yo > /dev/null         && printf "${installed}" || printf "${notInstalled}"


# npm -g install bower
# npm -g install yo
# npm -g install httpster
# npm -g install puer

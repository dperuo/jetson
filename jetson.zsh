# jetson.zsh
# Copywright 2015-2025 Derek Peruo
# Released under the MIT license
#
# https://github.com/dperuo/jetson
#

#!/usr/bin/env zsh

source "logging.zsh"
source "applist.zsh"

for app in $(applist); do
  which $app > /dev/null || log_warn "$app"
done

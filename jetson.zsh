# jetson.zsh
# Copywright 2015-2025 Derek Peruo
# Released under the MIT license
#
# https://github.com/dperuo/jetson
#

#!/usr/bin/env zsh

source "logging.zsh"

for app in $(cat "./applist.txt"); do
  which $app > /dev/null && log_ok $app || log_warn "$app"
done

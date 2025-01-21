#!/usr/bin/env zsh

applist() {
    test -f "./applist.txt" && cat "./applist.txt" || echo "NO_APPLIST_FOUND"
}
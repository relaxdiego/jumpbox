#!/usr/bin/env bash
set -e

run_once_marker=~/.dotfiles-installed-20161205

if [ ! -e "$run_once_marker" ]; then
    echo "==================================================================="
    echo "Welcome, `whoami`. Preparing your environment prior to first use..."
    echo "==================================================================="
    sleep 5
    cd /srv/dotfiles
    ./setup
    touch $run_once_marker
    echo "======================================"
    echo "Your environment is now set up. Enjoy!"
    echo "======================================"
fi

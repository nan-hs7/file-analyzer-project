#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="python3"

if dpkg -l | grep -q "$PACKAGE"; then
    echo "$PACKAGE is installed."
    dpkg -l | grep "$PACKAGE"
else
    echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
    python3) echo "Python: a powerful open-source programming language" ;;
    apache2) echo "Apache: the web server that built the internet" ;;
    mysql) echo "MySQL: database powering many applications" ;;
    vlc) echo "VLC: plays almost all media formats freely" ;;
    *) echo "Unknown package" ;;
esac

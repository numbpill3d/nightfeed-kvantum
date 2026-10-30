#!/usr/bin/env bash
# Nightfeed — Kvantum Theme — install.  ./install.sh
set -euo pipefail
HERE=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
DST=${XDG_CONFIG_HOME:-$HOME/.config}/Kvantum/Nightfeed
rm -rf "$DST"; mkdir -p "$DST"
cp "$HERE"/Nightfeed.kvconfig "$HERE"/Nightfeed.svg "$DST"/
kwriteconfig6 --file Kvantum/kvantum.kvconfig --group General --key theme Nightfeed
kwriteconfig6 --file kdeglobals --group KDE --key widgetStyle kvantum
echo "Restart apps to see it."

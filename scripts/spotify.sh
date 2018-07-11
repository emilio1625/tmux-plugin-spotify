#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$CURRENT_DIR/helpers.sh"

# Hack to make this work from TTY's and fbterm
ENVIRON=$(cat /proc/$(pgrep -o -u $USER spotify)/environ | tr \\0 \\n)
if [ -n "$ENVIRON" ]; then
  SPOTIFY_ADDR=$(grep DBUS_SESSION_BUS_ADDRESS <<< $ENVIRON)
  export $SPOTIFY_ADDR
else
  echo "Unable to set DBUS_SESSION_BUS_ADDRESS."
  exit
fi

print_spotify_song() {
  if is_linux; then
    eval $(sp eval)
    echo $SPOTIFY_ARTIST - $SPOTIFY_TITLE
  else
    echo "tmux-plugin-spotify works only on Linux"
  fi
}

main() {
  print_spotify_song
}

main

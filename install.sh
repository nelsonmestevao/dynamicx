#!/bin/bash

TEMP_FILE=$(mktemp)

crontab -l > "$TEMP_FILE"

echo '0 * * * * XDG_RUNTIME_DIR=/run/user/$(id -u) DISPLAY=:0 $HOME/.local/bin/dynamicx' >> "$TEMP_FILE"

crontab "$TEMP_FILE"

cp ./dynamicx "$HOME/.local/bin/"

cp -r Wallpapers/Earth "$HOME/Pictures/Wallpapers/"


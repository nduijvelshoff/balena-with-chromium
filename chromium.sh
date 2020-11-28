#!/bin/bash/
SIZE=$(xdpyinfo | grep dimensions | sed -r 's/^[^0-9]*([0-9]+)x([0-9]+).*$/\1,\2/')
su - non-root -c "chromium --window-size=$SIZE --window-position=0,0 --start-maximized"
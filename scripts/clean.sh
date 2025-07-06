#!/bin/bash

orphans=$(pacman -Qdtq)
YAY_CACHE_DIR=$HOME/.cache/yay

if [[ -n "$orphans" ]]; then
  sudo pacman -Rsn $orphans
fi

sudo paccache -r


#!/bin/sh

# Author: Noor Wachid
# Website: http://wachd.github.io

# set brightness on lenovo thinkpad
# without getting blank screen
# if too low

step=$1
curr=$(xbacklight -get)
curr=${curr%.*}

case $2 in
  "inc")
    xbacklight -inc $step
    ;;
  "dec")
    if [ $curr -gt $step ]; then
      xbacklight -dec $step
    else
      xbacklight -set 1
    fi
    ;;
esac

bar_restart.sh

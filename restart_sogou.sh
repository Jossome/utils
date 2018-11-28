#!/bin/sh
pidof fcitx | xargs kill
cd ~/.config/
rm -r SogouPY 
rm -r SogouPY.users 
rm -r sogou-qimpanel
pidof sogou-qimpanel | xargs kill -9
nohup fcitx  1>/dev/null 2>/dev/null &
nohup sogou-qimpanel  1>/dev/null 2>/dev/null &
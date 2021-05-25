#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# xinput
xinput set-prop 11 276 1 &

# slock
xautolock -time 10 -locker slock &

#dwm bar
~/.dwm/bar &

# wallpaper
feh --bg-fill ~/Pictures/yena.png &

# picom
picom &

# clipmenu
pkill -f "bash /usr/bin/clipmenud"; pkill -f "clipnotify"; /usr/bin/clipmenud &

# mpd
mpd &

# loop
while true; do
	dwm >/dev/null 2>&1
done

# exec dbus & dwm
exec dbus-launch --exit-with-session dwm

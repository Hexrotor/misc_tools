#!/system/bin/sh
mkdir -p ~/busytools ~/.cache/aria2 ~/.config/aria2
[ -f ~/.cache/aria2/dht.dat ] || touch ~/.cache/aria2/dht.dat
if [ -d binaries ];then
	binaries/busybox --install -s ~/busytools
	cp binaries/dropbearmulti ~/busytools
	cp binaries/aria2c ~/busytools
	chmod 700 ~/busytools/dropbearmulti ~/busytools/aria2c
	ln -s ~/busytools/dropbearmulti ~/busytools/ssh
else
	echo "Directory does not exist!"
fi
[ -f aria2.conf ] && cp aria2.conf ~/.config/aria2/aria2.conf

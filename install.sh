#!/system/bin sh
mkdir -p ~/busytools ~/.cache/aria2 ~/.config/aria2
touch ~/.cache/aria2/dht.dat
./busybox --install -s ~/busytools
cp aria2.conf ~/.config/aria2/aria2.conf
cp dropbearmulti ~/busytools
cp aria2c ~/busytools
chmod 700 ~/busytools/dropbearmulti ~/busytools/aria2c
ln -s ~/busytools/dropbearmulti ~/busytools/ssh


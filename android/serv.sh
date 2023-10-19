#!/system/bin/sh
echo Use port 50089 for AriaNG
echo lighttpd 404 filename index.mp4
~/aria2c -D --conf-path=/sdcard/aria2.conf
~/busybox httpd -h /sdcard/Android/data/ -p 50089
~/lighttpd -f /sdcard/lighttpd/lighttpd.conf
mkdir -p /sdcard/Android/data/com.netspace.myipad/updates/release/updates
rm -rf /storage/emulated/0/Android/data/com.netspace.myipad/cache/myiapp_usage.upload
mkdir -p /storage/emulated/0/Android/data/com.netspace.myipad/cache/myiapp_usage.upload
touch /sdcard/Android/data/com.netspace.myipad/updates/release/updates/myidesktoppad.asp
echo done

#!/system/bin/sh
#script for p350 shell
read "p?Enter port for sanning: "
#p="5555"
read "a?Enter a: "
#a="192"
read "b?Enter b: "
read "c?Enter c: "
echo "Now scaning"
d=1
while [ $d != 255 ];do
	temp=$(busybox timeout 1 busybox telnet $a.$b.$c.$d $p)
	d=$(( $d + 1 ))
	if [[ "$temp" == *"Connected"* ]];then
		ip=$ip [$a.$b.$c.$d]
		echo Found new IP: $a.$b.$c.$d
		echo Total devices found: $ip
	fi
done
echo Done. Found IP with port [$p]: $ip

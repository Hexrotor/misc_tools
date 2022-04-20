#!/system/bin/ sh
read 'p?Enter port for scanning: '
read 'a?Enter a: '
read 'b?Enter b: '
read 'c?Enter c: '
i=1
while [ $i != 255 ];do
	ip=$(busybox timeout 1 telnet $a.$b.$c.$i $p)
	if [[ $ip == *"Connected"* ]];then
		found="$found [$a.$b.$c.$i]"
		echo Found new IP: $a.$b.$c.$i
		echo Total devices found: $found
	fi
	i=$(( $i + 1 ))
done
echo Done. Found IP with port $p: $found


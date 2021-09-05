#!/bin/bash
rm image.pf

for i in {0..457}
do
	hex=$(hexdump -n 3 -v -e '3/1 "%02X" "\n"' /dev/urandom)
	hex=$(openssl rand -hex 3)
	echo "PX $i 0 $hex" >> image.pf
done

cat image.pf | nc 204.2.69.112 1234 -N -u -W 0
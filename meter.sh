#!/bin/bash

update_lights () {
  for i in {456..0..2}
  do
    hex=$(hexdump -n 3 -v -e '3/1 "%02X" "\n"' /dev/urandom)

    echo "PX $i 0 $hex"
  done | nc 204.2.69.112 1234 -u -w 0
}

update_lights_tcp () {
  for i in {456..0..2}
  do
    hex=$(hexdump -n 3 -v -e '3/1 "%02X" "\n"' /dev/urandom)

    echo "PX $i 0 $hex"
  done | nc 204.2.69.112 1234 -N
}


while true; do
  update_lights
  update_lights_tcp
done


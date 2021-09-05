#!/bin/bash
while true; do
  # shuf ../outputs/rainbow.pf -o ../outputs/shuffled.pf
  cat ../outputs/shuffled.pf | nc 204.2.69.112 1234 -N
done
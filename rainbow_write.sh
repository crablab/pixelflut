#!/bin/bash
while true; do
  # shuf rainbow.pf -o shuffled.pf
  cat shuffled.pf | nc 204.2.69.112 1234 -N
done
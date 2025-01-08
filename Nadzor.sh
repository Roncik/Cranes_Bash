#!/bin/bash
trap './dzwig1.sh & ./dzwig2.sh &' USR1
trap 'kill $(jobs -p); echo "Praca zakonczona"; exit' SIGINT

while true; do
  sleep 1
done

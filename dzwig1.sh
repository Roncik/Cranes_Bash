#!/bin/bash
count=0
while true; do
  if [[ $(ls -1 miejsce1 | wc -l) -gt 0 && $(ls -1 bufor | wc -l) -lt 3 ]]; then #jezeli w miejsce1 sa pliki i w bufor sa maksymalnie 3 pliki przenosi materialy do miejsce 2
    mv miejsce1/* bufor/ 2>/dev/null
    ((count++))
  else
    break
  fi
done
exit $count #zwraca ilosc przeniesionych plikow

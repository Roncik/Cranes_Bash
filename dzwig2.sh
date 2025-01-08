#!/bin/bash
count=0
while true; do
  if [[ $(ls -1 bufor | wc -l) -gt 0 ]]; then #jezeli w bufor sa pliki przenies plik z bufor do miejsce2
    mv bufor/* miejsce2/ 2>/dev/null
    ((count++))
  else
    if [[ $(ls -1 miejsce1 | wc -l) -eq 0 ]]; then #jezeli miejsce1 jest puste zakoncz prace
      break
    fi
  fi
done
exit $count #zwraca ilosc przeniesionych plikow

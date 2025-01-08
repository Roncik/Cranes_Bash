#!/bin/bash

mkdir -p miejsce1 bufor miejsce2
touch miejsce1/material{1..20}
bash ./Nadzor.sh
kill -USR1 21550 (W innym terminalu)
kill -SIGINT 21550 (W innym terminalu)

exit

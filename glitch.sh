#!/bin/bash
EFFECT=$(shuf -n 2 effects.txt | tr -s \\n " ")
echo $EFFECT
HLENGTH=160

FILENAME=${1%.bmp}

sox -V1 -t raw -r 44100 -e mu-law -b 8 -c 1 $FILENAME.bmp -t raw -r 44100 -e mu-law -b 8 -c 1 .soxed $EFFECT

head -c $HLENGTH $FILENAME.bmp > $2
tail -c +$HLENGTH .soxed >> $2

rm .soxed

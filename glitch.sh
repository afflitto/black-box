#!/bin/bash
EFFECT=$(shuf -n 2 effects.txt | tr -s \\n " ")
echo $EFFECT
HLENGTH=160

if [ -z "$1" ] ; then
  FILENAME=$(date +"%y%m%d_%H%M")
else
  FILENAME=${1%.bmp}
fi

raspistill -e bmp -o $FILENAME.bmp -rot 270 -height 1080 -width 1920
echo "Picture captured"
sox -V1 -t raw -r 44100 -e mu-law -b 8 -c 1 $FILENAME.bmp -t raw -r 44100 -e mu-law -b 8 -c 1 .soxed $EFFECT

head -c $HLENGTH $FILENAME.bmp > $FILENAME"_g.bmp"
tail -c +$HLENGTH .soxed >> $FILENAME"_g.bmp"

rm .soxed
mv $FILENAME.bmp webapp/images/original
mv $FILENAME"_g.bmp" webapp/images/glitched

#!/bin/bash
EFFECT=$(shuf -n 2 ~/black-box/effects.txt | tr -s \\n " ")
echo $EFFECT
HLENGTH=160

if [ -z "$1" ] ; then
  FILENAME=$(date +"%y%m%d_%H%M")
else
  FILENAME=${1%.bmp}
fi

cd ~/black-box

gpio write 8 1
gpio pwm 1 140
raspistill -e bmp -o $FILENAME.bmp -rot 90 -h 1080 -w 1920 -t 1
echo "Picture captured"
gpio pwm 1 215
sox -V1 -t raw -r 44100 -e mu-law -b 8 -c 1 $FILENAME.bmp -t raw -r 44100 -e mu-law -b 8 -c 1 .soxed $EFFECT

head -c $HLENGTH $FILENAME.bmp > .output
tail -c +$HLENGTH .soxed >> .output

rm .soxed
mv $FILENAME.bmp webapp/images/original
mv .output webapp/images/glitched/$FILENAME.bmp
gpio write 8 0

import RPi.GPIO as GPIO
import os

GPIO.setmode(GPIO.BCM)

GPIO.setup(27, GPIO.IN, pull_up_down=GPIO.PUD_UP)
GPIO.setup(2, GPIO.OUT)
GPIO.setup(18, GPIO.OUT)
GPIO.output(2, 0)
GPIO.PWM(18, 50)

while True:
    if not GPIO.input(27):
        os.system("~/black-box/glitch.sh")

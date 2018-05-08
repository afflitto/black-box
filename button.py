import RPi.GPIO as GPIO
import os

GPIO.setmode(GPIO.BCM)

GPIO.setup(27, GPIO.IN, pull_up_down=GPIO.PUD_UP)
GPIO.setup(2, GPIO.OUT)
os.system("gpio mode 1 pwm; gpio pwm-ms; gpio pwmc 192; gpio pwmr 2000; gpio pwm 1 140")

while True:
    if not GPIO.input(27):
        os.system("~/black-box/glitch.sh")

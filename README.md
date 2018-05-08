# black-box

A Raspberry Pi based camera that glitches and corrupts images as they are taken.

![Example](Examples/face.bmp)
![Exampe 2](Examples/grey.bmp)

# About
This camera is a tool to make interesting art. Similarly to a film camera, this camera has no way to view the images it captures until after the photos are shot (in this case, when connected to WiFi rather than film being developed). This project is also meant to combine something humans are good at: finding good subjects to take pictures of, and something computers are good at: applying functions to sets of data. Although we normally have control over what kind of functions the computer applies during image processing, by letting the computer randomly decide, we get some interesting effects.

The lack of control over this camera presents an interesting challenge. Even with a perfectly ligned up and lit subject, this device can produce a completely unusable image. It can also create something very beautiful, it all depends on what the computer randomly decides to do. We tend to use computers in a way in which we have control over most settings and parameters, so this device forces the user to think in a very different way.

# Build Instructions
Items needed:
- Raspberry Pi Zero W
- Raspberry Pi Camera
- Adafruit PowerBoost 500 Charger
- Servo
- Misc buttons, wires, LEDs, etc
- 3D printed enclosure

*more detailed hardware instructions coming soon (schematics, etc)*

Install required software
```sudo apt-get install git python wiring-pi```

Clone this repository into the home directory on your Raspberry Pi
```git clone https://github.com/afflitto/black-box```

Execute the installer script:
```cd ~/black-box
sudo chmod 755 *.sh
./install.sh
sudo reboot```

Now take some pictures! View the gallery at [raspberrypi.local](raspberrypi.local).

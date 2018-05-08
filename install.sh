#!/bin/bash
cd ~/black-box/webapp/images
mkdir original
mkdir glitched

sudo cp ~/black-box/camera.service /etc/systemd/system
sudo systemctl enable camera.service

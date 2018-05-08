#!/bin/bash
cd ~/black-box/webapp/images
mkdir original
mkdir glitched

cp ~/black-box/camera.service /etc/systemd/system
systemctl enable camera.service

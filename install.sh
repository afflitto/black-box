#!/bin/bash
mkdir ~/black-box/webapp/images/original
mkdir ~/black-box/webapp/images/glitched

sudo cp ~/black-box/camera.service /etc/systemd/system
sudo systemctl enable camera.service

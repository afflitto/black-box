#!/bin/bash
mkdir ~/black-box/webapp/imagesoriginal
mkdir ~/black-box/webapp/imagesglitched

sudo cp ~/black-box/camera.service /etc/systemd/system
sudo systemctl enable camera.service

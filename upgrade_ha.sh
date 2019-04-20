#!/bin/bash

source /home/hassio/homeassistant/bin/activate
python3 -m pip install --upgrade homeassistant
deactivate
sudo /bin/systemctl restart home-assistant@hassio.service
exit 0

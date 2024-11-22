#!/bin/bash
pull_haptycs_gh() {
  cd /home/pi/desktop/haptycs-ble/ && git pull
}

echo 'Begin ping'
    wget -q --spider http://google.com
if [ $? -eq 0 ]; then
    echo "Wifi detected, pulling from github the latest branch" &&
    pull_haptycs_gh
else
    echo "Offline"
    echo "睊 No wifi!, just running the service"
fi

cd /home/pi/desktop/haptycs-ble && \
. /home/pi/desktop/haptycs-ble/env/bin/activate && \
python3 cputemp.py
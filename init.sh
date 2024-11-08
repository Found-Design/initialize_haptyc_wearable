#!/bin/bash
pull_haptycs_gh() {
  cd /home/pi/Desktop/haptycs-ble/ && git pull
}

echo 'Begin ping'
    wget -q --spider http://google.com
if [ $? -eq 0 ]; then
    echo "pulling from github the latest branch" &&
    pull_haptycs_gh

else
    echo "Offline"
    echo "睊 No wifi!, just running the service"
fi


/usr/bin/python3 /home/pi/Desktop/haptycs-ble/cputemp.py
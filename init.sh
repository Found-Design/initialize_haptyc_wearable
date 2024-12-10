#!/bin/bash
pull_haptycs_gh() {
  cd /home/pi/desktop/haptycs-ble/ && git -c credential.helper='!f() { echo "password=raspberry"; }; f' pull
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


/usr/bin/python3 /home/pi/desktop/haptycs-ble/cputemp.py
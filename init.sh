#!/bin/bash
pull_haptycs_gh() {
  cd /home/pi/Desktop/haptycs-ble/ && git pull
}

echo 'Begin ping'
if ping -c 1 8.8.8.8 > /dev/null; then
    echo "睊 No wifi!, just running the service"
else
    echo "pulling from github the latest branch" &&
    pull_haptycs_gh
fi


# wifi="$(ip a | grep wlp2s0 | grep inet | wc -l)"
#                                         if [ $wifi = 1 ] || [ $wifi = 2 ]; then

#                                         else
#                                         fi

/usr/bin/python3 /home/pi/Desktop/haptycs-ble/cputemp.py
#!/bin/bash
pull_haptycs_gh() {
  cd /home/pi/Desktop/haptycs-ble/ && git pull
}

wifi="$(ip a | grep wlp2s0 | grep inet | wc -l)"
                                        if [ $wifi = 1 ] || [ $wifi = 2 ]; then
                                                echo "pulling from github the latest branch"
                        pull_haptycs_gh
                                        else
                                                echo "睊 No wifi!, just running the service"
                                        fi

/usr/bin/python3 /home/pi/desktop/haptycs-ble/cputemp.py
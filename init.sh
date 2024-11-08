#!/bin/bash
pull_haptycs_gh() {
  cd /home/pi/desktop/haptycs-ble/ && git pull
}

wifi="$(ip a | grep wlp2s0 | grep inet | wc -l)"
                                        if [ $wifi = 1 ] || [ $wifi = 2 ]; then
                                                echo "pulling from github the latest branch"
                        pull_haptycs_gh
                                        else
                                                echo "睊 No wifi!, just running the service"
                                        fi

cd /home/pi/desktop/haptycs-ble && \
. /home/pi/desktop/haptycs-ble/env/bin/activate && \
python3 cputemp.py
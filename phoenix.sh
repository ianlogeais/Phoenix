#!/bin/bash 

# incron IN_DELETE

if [ ! -e /var/log/phoenix.log ]; then
    touch /var/log/phoenix.log
fi

echo /home/ilogeais/phoenix IN_DELETE /home/ilogeais/wphoenix.sh >> /etc/incron.d/incron
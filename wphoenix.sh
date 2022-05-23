#!/bin/bash

removed_file=$(fc -nl $((HISTCMD - 1)) | cut -d " " -f3)

echo $removed_file >> /var/log/phoenix.log

if [ ! -e /etc/phoenix ]; then
    mkdir /etc/phoenix
fi

cp $removed_file /etc/phoenix/
#!/bin/bash 

# Declaration of variables

# We create the log file if it does not exist 

if [ ! -e /var/log/phoenix.log ]; then
    touch /var/log/phoenix.log
    chmod 777 /var/log/phoenix.log
fi


echo -e "\nalias rm='mkdir -p $HOME/.trash && mv -b -t $HOME/.trash'" >> $HOME/.bashrc



source $HOME/.bashrc

if [[ -n "$1" && "$2" ]]; then
    mv $HOME/.trash/$1 $2
fi

history=$(history |  grep -v "history" | grep rm)

echo $history

echo $history >> /var/log/phoenix.log

history |  grep -v "history" | grep rm >> /var/log/phoenix.log
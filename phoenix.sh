#!/bin/bash 

# Declaration of variables

# We create the log file if it does not exist 

if [ ! -e /var/log/phoenix.log ]; then
    touch /var/log/phoenix.log
    chmod 777 /var/log/phoenix.log
fi

# Modification of the .bashrc file

echo -e "\nalias rm='mkdir -p $HOME/.trash && mv -b -t $HOME/.trash'" >> $HOME/.bashrc



source $HOME/.bashrc


# Arguments use case

# Command phoenix to bring back files

if [[ -n "$1" && "$2" ]]; then
    mv $HOME/.trash/$1 $2
fi


# help args

if [[ -n "h" || "-help" ]]; then 
    echo "To bring back a file use the command : phoenix arg1=the_name_of_the_file arg2=where_you_want_it_to_come_back"
fi


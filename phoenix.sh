#!/bin/bash 

# incron IN_DELETE

# Declaration of variables

rhel_release=$(cat /etc/redhat-release)
ubuntu_release=$(cat /etc/os-release)


if [ ! -e /bin/vim ], then 
    yum install vim -y 
fi

# Check the os to know what packet manager we'll use to downolad incron

if [ ! -e /etc/incron.d ]; then
    yum install epel-release -y
    yum install incron -y
fi    

# We create the log file if it does not exist 

if [ ! -e /var/log/phoenix.log ]; then
    touch /var/log/phoenix.log
fi

# We configure the incron to execute another script when the files are deleted

echo $USER >> /etc/incron.allow

# definitive version echo /home/$USER/* IN_DELETE /home/ian/wphoenix.sh >> /etc/incron.d/incron
echo /home/ian/* IN_DELETE /home/ian/wphoenix.sh >> /etc/incron.d/incron
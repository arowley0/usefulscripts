#!/bin/bash
#
# https://www.digitalocean.com/community/tutorials/initial-server-setup-with-debian-9
# 
# 

if [ $1 == "init" ]
then
    PACKAGES="sudo man-db emacs24-nox"
else
    PACKAGES="ufw wget curl"
fi
echo $PACKAGES

sudo apt update -y && \
    sudo apt-get install -y $PACKAGES1 && \
    sudo ufw app list && \
    sudo ufw allow OpenSSH && \
    sudo ufw enable && \
    sudo ufw status && \
read -p "Press enter to continue"
    sudo update-alternatives --set editor /usr/bin/emacs && \
    echo "done"


    


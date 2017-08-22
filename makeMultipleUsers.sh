#!/bin/bash

#Useful in RedHat Distros

if [ $# -eq 0 ]
  then
    echo -e "\033[31mNo arguments supplied\033[0m"
    echo -e "\033[31mPlease supply 1 arguement - <number of users>\033[0m"
    exit
  else
    numberOfUsers=$1
    echo "Number of users to generate: $numberOfUsers"
    echo " --- --- --- --- --- --- --- --- "

  #echo "Password1" | su git -c 'rm /home/git/.ssh/authorized_keys && cp /home/git/.ssh/authorized_keysBack$

  for (( i=0; i<$numberOfUsers; i++)); do
    echo $i
    sudo useradd -G developers training$i
    echo "Password1" | passwd training$i --stdin
    mkdir /home/training$i/.ssh
    sudo chown training$i /home/training$i/.ssh
    cp authorized_keys /home/training$i/.ssh/
    sudo chown training$i /home/training$i/.ssh/authorized_keys
    echo "Password1" | su training$i -c 'mkdir /home/'training$i'/git && exit'
    echo "Password1" | su training$i -c 'ssh-keygen -f /home/'training$i'/.ssh/id_rsa  -t rsa -N "" && exit'
    echo "Password1" | su training$i -c 'cp /home/'training$i'/.ssh/id_rsa.pub /tmp/'training$i'keypub && e$
    echo "Password1" | su git -c 'cat /tmp/'training$i'keypub >> /home/git/.ssh/authorized_keys && exit'
    echo "Password1" | su training$i -c 'rm /tmp/'training$i'keypub && exit'
    echo "Password1" | su training$i -c 'ssh-keyscan localhost >> ~/.ssh/known_hosts && exit'
    #echo "Password1" | su training$i -c 'cd /home/'training$i'/git && git clone git@localhost:/home/git/tra$
    #echo "Password1" | su training$i -c 'cd /home/'training$i'/git && git config --global user.email "'trai$
    #must not forget to rm the keys in tmp
  done
fi

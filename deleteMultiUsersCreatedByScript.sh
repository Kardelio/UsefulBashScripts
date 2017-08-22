#!/bin/bash
echo "Go"

#all kills any processes attached to those users

cat /etc/passwd | \
while read CMD; do
    IFS=':' read -ra ADDR <<< $CMD
    userName="${ADDR[0]}"
    if [[ $userName == *"training"* ]]; then
        echo "Is one: $userName"
        kill -9 `ps -aux | grep $userName | awk '{print $2}'`
        sudo userdel -r $userName
    fi
done

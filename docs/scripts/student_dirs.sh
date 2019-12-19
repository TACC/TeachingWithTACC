#!/bin/bash
for USERNAME in $@
do
        if id -u "$USERNAME" >/dev/null 2>&1; then
                echo "Making a folder for $USERNAME..."
                mkdir $USERNAME
                setfacl -m u:$USERNAME:rwx $USERNAME
        else
                echo "$USERNAME does not exist"
        fi
done
unset USERNAME   

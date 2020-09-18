#! /bin/bash

sudo addgroup bankgroup
# Creating a new group called bankgroup

sudo adduser james
# Creating a new user called james

sudo usermod -aG bankgroup james
# Adding james to the bankgroup group

touch run.sh
# Create a script file called run

echo "echo Hello World!" >> run.sh
# Command to print the message as required

chmod 774 run.sh
# Setting the permissions as required for the challenge

sudo chown james:bankgroup run.sh
# Setting file ownership

su -c "./run.sh" -m "james"
# Run the file from james account otherwise just create group,user in james and runs after exiting james account

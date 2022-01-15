#!/bin/sh

DIR=$HOME/api_logs
FILE= $(date +"%m-%d-%y-%T").log

cd $DIR
touch $FILE

# log api calls:
termux-battery-status >> $FILE
termux-infrared-frequencies >> $FILE
termux-location >> $FILE
termux-sensor >> $FILE
termux-telephony-cellinfo >> $FILE
termux-wifi-connectioninfo >> $FILE

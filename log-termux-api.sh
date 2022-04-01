#!/bin/sh

DIR = "/data/data/com.termux/files/home/api_logs"
FILE = "$(date +"%m-%d-%y-%T").log"

cd $DIR

# log api calls:
echo "battery:" >> $FILE
echo "---" >> $FILE
termux-battery-status >> $FILE

echo "infrared-frequencies:" >> $FILE
echo "---" >> $FILE
termux-infrared-frequencies >> $FILE

echo "location:" >> $FILE
echo "---" >> $FILE
termux-location >> $FILE

echo "telephone-cell-info:" >> $FILE
echo "---" >> $FILE
termux-telephony-cellinfo >> $FILE

echo "wifi-connection-info:" >> $FILE
echo "---" >> $FILE
termux-wifi-connectioninfo >> $FILE
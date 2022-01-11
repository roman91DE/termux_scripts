#!/bin/sh

echo upgrading services

# paketmanager
pkg upgrade
pkg autoclean

echo system was fully upgraded
echo "Done - Press any key to terminate"
read TMP

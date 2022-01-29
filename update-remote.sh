#!/bin/sh

# set parent directory for remote repositories
PROJECT_DIR="${HOME}/github"

# list all remote repositories to be included in file remote.txt inside PROJECT_DIR
REMOTE_FILE="${PROJECT_DIR}/remote.txt"

cd $PROJECT_DIR

if [ ! -f "$REMOTE_FILE" ]; then
    echo "ERROR - Create remote.txt as a list of remote repositories"
    exit
fi

LIST=$(cat remote.txt)

echo $(DATE)

for REPO in $LIST
    do
        cd ${REPO}
        echo "Updating repository ${REPO}"
        echo "-------------------------------"
        git pull
        git add *; git commit -m "$(date): update-remote.sh"; git push
        echo
        cd ${PROJECT_DIR}
    done
echo "Done - Press any key to terminate"
read TMP

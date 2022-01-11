#!/bin/sh

PDIR="${HOME}/github"
cd $PDIR

REPOS=$(${PREFIX}/bin/ls)

for R in $REPOS
    do
        cd "${PDIR}/${R}"
        git add *; git commit -m "auto push"; git push
        cd ${PDIR}
    done

echo "Done - Press any key to terminate"
read TMP


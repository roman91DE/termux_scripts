#!/bin/sh

PDIR="${HOME}/github"
cd $PDIR

REPOS=$(${PREFIX}/bin/ls)

for R in $REPOS
    do
        echo "Repository: ${R}"
        cd "${PDIR}/${R}"
        git pull
        cd ${PDIR}
    done

echo "$(date): Pulled github repositories"


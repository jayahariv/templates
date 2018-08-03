#!/bin/sh


echo "checking pre-commit hooks..."
diffstr=`git diff --cached $against | grep -e '^\+.*nocommit.*$'`
if [[ -n "$diffstr" ]] ; then
    echo "You have left nocommit tag in your changes, you can't commit until it has been removed."
    exit 1
fi
exit
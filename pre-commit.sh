#!/bin/sh

if git rev-parse --verify HEAD >/dev/null 2>&1
then
	against=HEAD
else
	# Initial commit: diff against an empty tree object
	against=4b825dc642cb6eb9a060e54bf8d69288fbee4904
fi

echo "checking pre-commit hooks..."
diffstr=`git diff --cached $against | grep -e '^\+.*nocommit.*$'`
if [[ -n "$diffstr" ]] ; then
    echo "You have left nocommit tag in your changes, you can't commit until it has been removed."
    exit 1
fi
exit
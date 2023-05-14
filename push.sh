#!/bin/bash
git add -A
git update-index --chmod=+x entrypoint.sh
git commit -m "$1"
git tag -a -m "$1" $2
git push --follow-tags
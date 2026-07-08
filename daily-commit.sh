#!/bin/zsh
REPO="$HOME/daily-log"
cd "$REPO" || exit 1

TODAY=$(date '+%Y-%m-%d %H:%M:%S')
echo "- $TODAY — daily auto-commit" >> log.md

git add log.md
git commit -m "daily commit $TODAY"
git push origin main

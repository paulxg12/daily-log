#!/bin/zsh
REPO="$HOME/daily-log"
cd "$REPO" || exit 1

for i in 1 2 3 4 5; do
  NOW=$(date '+%Y-%m-%d %H:%M:%S')
  echo "- $NOW — daily commit #$i" >> log.md
  git add log.md
  git commit -m "daily commit $NOW #$i"
  sleep 2
done

git push origin main

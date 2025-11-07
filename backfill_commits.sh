#!/bin/bash
start_date="2024-06-01"
for i in {1..160}
do
  date=$(date -d "$start_date +$i days" +"%Y-%m-%d")
  echo "Commit for Day $i" > progress.txt
  git add progress.txt
  GIT_COMMITTER_DATE="$date 12:00:00" GIT_AUTHOR_DATE="$date 12:00:00" git commit -m "Day $i: GFG problem solved"
done
git push origin main

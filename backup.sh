#!/bin/bash
# Save every change as a git commit. Pushes only if you added a remote yourself (a PRIVATE repo).
cd "$(dirname "$0")"
git add -A
git diff --cached --quiet && { echo "nothing to back up"; exit 0; }
git commit -q -m "backup: $(date '+%Y-%m-%d %H:%M')"
git remote get-url origin >/dev/null 2>&1 && git push -q origin HEAD && echo "backed up + pushed" || echo "backed up locally"

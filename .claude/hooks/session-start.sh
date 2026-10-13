#!/bin/bash
# Every new chat starts with "where we left off". Output of this script is given to Claude as context.
cd "${CLAUDE_PROJECT_DIR:-$(dirname "$0")/../..}" || exit 0
echo "=== NOW.md (where we left off, last edited $(date -r NOW.md '+%a %d %b %H:%M' 2>/dev/null)) ==="
cat NOW.md 2>/dev/null
exit 0

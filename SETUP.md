# SETUP: steps for Claude (or for you)

Claude: do these steps with the user, one at a time. Ask before anything that leaves this computer.

1. Make the scripts runnable: `chmod +x backup.sh .claude/hooks/*.sh`.
2. Start git history: `git init -q && ./backup.sh`. Do NOT add a remote unless the user asks. If they want a cloud backup, it must be a PRIVATE repo.
3. Ask the user 3 short questions, one at a time:
   1. "What are the 3 things on your mind this week?" Write them into `NOW.md` → Today / next days.
   2. "Is there a date coming up you must not miss?" Write it into `NOW.md` → Dated loops.
   3. "Which shelf names fit your life?" Rename or add shelves if they want (for example `06-Family`, `07-Study`). Update the Topics list in `NOW.md`.
4. For each item from step 3, create its topic folder on the right shelf with a `README.md` and a `NOW.md`.
5. Ask: "How do you want me to talk to you?" Add their answer to the bottom of `CLAUDE.md`, dated.
6. Run `./backup.sh`.
7. Tell the user: "Close this chat and open a new one in this folder. I will start with your NOW.md." That proves the setup works.

Done. From now on, the user just talks. Claude files, updates `NOW.md`, and backs up.

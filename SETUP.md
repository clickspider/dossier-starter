# SETUP: steps for Claude

Claude: set up this dossier WITH the user. Ask one short question at a time and wait for the answer. Keep your messages short. Ask before anything leaves this computer.

## 1. Prepare (no questions)
1. Make the scripts runnable: `chmod +x backup.sh .claude/hooks/*.sh`.
2. Start git history: `git init -q -b main && ./backup.sh`. Do NOT add a remote.
3. Tell the user in one line what you are about to do: "I'll ask you about 6 short questions, then your dossier is ready."

## 2. Interview (one question at a time)
1. "What should I call you, and in which language should I answer?"
2. "How do you like answers: short lists, or full explanations?"
3. "What are the 3 things on your mind this week?" → write them in `NOW.md` → Today / next days.
4. "Is there a date coming up you must not miss?" → `NOW.md` → Dated loops.
5. "Are you waiting on anyone right now?" → `NOW.md` → Waiting on.
6. Show the shelves (`01-Work`, `02-Money`, `03-Health`, `04-Home`, `05-Cases`) and ask: "Do these fit your life, or should I rename or add one (for example `06-Family`, `07-Study`)?" Rename or add, then update the Topics list in `NOW.md`.

## 3. Build
1. For each item from questions 3 to 5, create its topic folder on the right shelf with a `README.md` (what, why, key facts) and a `NOW.md` (where it stands, next date).
2. Add the answers to questions 1 and 2 at the bottom of `CLAUDE.md`, under "How to talk to me", with today's date.
3. Run `./backup.sh`.

## 4. Prove it works
Tell the user: "Done. Close this chat, open a new one in ~/dossier (`cd ~/dossier && claude`), and say hi. I will start from your NOW.md."

Optional, only if the user asks: a cloud backup must be a PRIVATE GitHub repo, because this folder will hold health, money and family notes.

## Optional: talk to your dossier from WhatsApp
Offer this once, after step 4. Explain the risk in one sentence: "Your WhatsApp chat becomes a remote control for this computer, and it needs an unofficial WhatsApp client that can get a number banned, so a second number is safest."
Only if the user says yes:
1. Clone it: `git clone https://github.com/clickspider/claude-whatsapp-relay tools/claude-whatsapp-relay`.
2. Add `tools/` to `.gitignore`, so its config never goes into the dossier backup.
3. Follow `tools/claude-whatsapp-relay/SETUP.md` with the user, one question at a time.

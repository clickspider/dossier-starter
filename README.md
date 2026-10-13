# Dossier Starter

A second brain for Claude Code that lives on your own computer. Plain markdown folders, git for history, two small hooks. No extra app, no account, no subscription on top of Claude.

Guide: https://www.danielfrey.me/claude-second-brain/

## What you get
1. **Shelves:** `01-Work`, `02-Money`, `03-Health`, `04-Home`, `05-Cases`, `_archive`. Every topic gets one home.
2. **`NOW.md`:** where you left off. A hook gives it to Claude at the start of every chat, so you never re-explain yourself.
3. **`CLAUDE.md`:** the house rules Claude follows here (filing, keeping state, how to talk to you).
4. **A date hook:** Claude sees today's date on every message, so it stops guessing.
5. **`backup.sh`:** every change becomes a git commit. Push to a private repo only if you want to.

## Set it up (5 minutes)
Paste this into Claude Code:

```
Download https://github.com/clickspider/dossier-starter/archive/refs/heads/main.zip,
unzip it to ~/dossier, then follow ~/dossier/SETUP.md with me.
```

Or by hand:

```bash
curl -L https://github.com/clickspider/dossier-starter/archive/refs/heads/main.zip -o dossier.zip
unzip dossier.zip && mv dossier-starter-main ~/dossier
cd ~/dossier && chmod +x backup.sh .claude/hooks/*.sh && git init -q && ./backup.sh
claude
```

## Privacy
Everything stays in this folder on your computer. Nothing is sent anywhere except your normal Claude conversations. If you push it to GitHub, make the repo **private**: this folder will hold your health, money and family notes.

## License
MIT. Take it, change it, make it yours.

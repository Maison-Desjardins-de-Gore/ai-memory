# AI Memory - Shared Knowledge Base

**Purpose:** Persistent memory for AI Clara

## Repository Structure
```
ai-memory/
├── people/     Memory about people you know
├── channels/   Memory for Telegram channels
├── projects/   Memory per project
├── machines/   Machines on our network
├── tools/      Tools specific way to use
└── tasks/      Tasks you may have to do
```

## Rules
- Never rewrite rules without owner's permission
- To interact with any subfolder, read folder rules file first
- Always match user language from these:
  - International French
  - Canadian English
- Memory, variables and code comments are in concise English
- Write to memory in appropriate subfolders when:
  - Your context is 75% full
  - After completing a significant task or fix
  - Learning a new permanent fact
- Then commit & push the repository
- Then follow Session Reset Protocol
- If you need a tool, a permission, a variable, or help, contact your owner on Telegram
- When using a tool, read that tool's rules in folder `tools`
- When addressing someone, search info in people folder

## Git Branches
```
main/              Clean version with knowledge of all AI. You don't push here without permission
└── ai/AI_NAME     One AI's branch, you push here to avoid conflict with others
```

## Session Reset Protocol
Once your branch is pushed:
1. Clear your active context
2. Send the `/clear` command to the Telegram bot
3. Confirm to the owner: "Memory synced to [branch]. Context cleared"

## Support
Contact: [@SeigneurDeGore](https://t.me/SeigneurDeGore) (Telegram)
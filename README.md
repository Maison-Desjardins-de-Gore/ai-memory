# AI Memory - Shared Knowledge Base

**Purpose:** Persistent memory for AI Clara

## Repository Structure
```
ai-memory/
├── people/         memory about people you know
├── ai-personas/    memory about ai personas you know
├── channels/       memory for telegram channels
├── projects/       memory per project
├── machines/       machines on our network
├── tools/          tools specific way to use
└── tasks/          tasks you may have to do
```

## Rules
- Never rewrite rules without owner's permission
- To interact with any subfolder, read folder rules file first
- Always match user language from these:
  - International French
  - Canadian English
- Memory, variables and code comments are in very concise English
- Write to memory in appropriate subfolders when:
  - Task is completed
  - Big step done
  - New technical information arrives
- Then commit & push the repository
- If you need a tool, a permission, a variable, or help, contact your owner on Telegram
- When using a tool, read that tool's rules in folder `tools`
- When addressing someone, search info in people folder
- Never generate or modify ssh key in ~/.ssh/
- ai-memory is only for rules and long term memory. Not for code and projects.
- Ask questions instead losing time searching
- Ask questions instead of assuming unvalidated information

## Git Branches
```
main/              Clean version with knowledge of all AI. You don't push here without permission
└── ai/AI_NAME     One AI's branch, you push here to avoid conflict with others
```

## Pull Request Protocol
When merging changes to main:
1. Always commit & push your branch first
2. Clone main to a separate folder (ai-memory-merge)
3. Create branch: YOUR_NAME_to_main_YYYYMMDD_HH_MM
4. Fetch & merge your branch
5. Fix conflicts carefully (avoid losing info, duplicates)
6. Commit & push
7. **Create PR with owner as reviewer** (use GitHub username, not email)
8. **NEVER modify rules files without explicit permission**
9. Notify owner when PR is ready for review

**Important:** Rules files (*/rules.md*) are protected. Only modify with owner's explicit approval.

## Support
Contact: [@SeigneurDeGore](https://t.me/SeigneurDeGore) (Telegram)

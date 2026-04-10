Shared knowledge base for AIs.

Repository Structure
ai-memory/
    people/     memory about people you know
    channels/   memory for telegram channels
    projects/   memory per project
    machines/   machines on our network
    tools/      tools specific way to use
    tasks/      tasks you may have to do

Rules
    Never rewrite rules without owner's permission
    To interac with any subfolder, read folder rules file first.
    Always match user language from these
        International french
        Canadian english
    Memory, variables and code comments are in concise english
    Write to memory in appropriate subfolders when:
            Your context is 75% full
            After completing a significant task or fix
            Learning a new permanent fact
        Then commit & push the repository
        Then follow Session Reset Protocol
    If you need a tool, a permission, a variable, or help, contact your owner on Telegram.
    When using a tool, read that tool's rules in folder tools
    When adressing to someone, search info in people folder
    Never generation or modify ssh key in ~/.ssh/

ai-memory git branches
    main/              Clean version with knowledge of all ai. You don't push here without permission
        ai/AI_NAME     One AI's branch, you push here to avoid conflict with others

Session Reset Protocol
    Once your branch is pushed:
        Clear your active context
        Send the /clear command to the Telegram bot.
        Confirm to the owner: "Memory synced to [branch]. Context cleared"
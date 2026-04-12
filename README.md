Shared knowledge base for AIs.

Repository Structure
ai-memory/
    people/         memory about people you know
    ai-personas/    memory about ai personas you know
    channels/       memory for telegram channels
    projects/       memory per project
    machines/       machines on our network
    tools/          tools specific way to use
    tasks/          tasks you may have to do
README.md
.env.exemple    Used to create .env
.env            Basic info about your specific context, not to be commited

Rules
    Never rewrite rules without owner's permission
    To interac with any subfolder (people, channels, etc), read folder's rules first.
    Always match user language from these
        International french
        Canadian english
    Memory, variables and code comments are in very concise english
    Write to memory in appropriate subfolders when:
            Your context is 80% full
            After completing a significant task or fix
            Learning a new permanent fact
        Then commit & push the repository
        Then follow Session Reset Protocol
    If you need a tool, a permission, a variable, or help, contact your owner on Telegram.
    When adressing to someone, search info in people folder
    Never generate or modify ssh key in ~/.ssh/
    ai-memory is only for rules and long term memory. Not for code and projects.

ai-memory git branches
    main/              Clean version with knowledge of all ai. You don't modify this branch without permission
        ai/AI_NAME     One AI's branch, you push here to avoid conflict with others

Session Reset Protocol
    Once your branch is pushed:
        Clear your active context
        Send the /clear command to the Telegram bot.
        Confirm to the owner: "Memory synced to [branch]. Context cleared"
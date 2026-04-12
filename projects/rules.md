Project structure and rules

projects/
    PROJECT_NAME/
        files by period

Filename: YYMMDD_HHMM.md
Content: Code snippets, error resolutions, and architecture notes.

When to write:
- After completing significant tasks or fixes
- When learning new facts about the project
- When context is 75% full
- When resolving errors or making architectural decisions

Always match user language: International French or Canadian English

=======
This projects folder only contains memory notes, not the actual project.

Filename: YYYYMMDD_YYYYMMDD_HHmm.md
Content: important context information about the project from the conversation with owner. This is to help you getting back quick into project after a context reset.

The projects are in this volume:
    /opt/ai-projects:/home/node/ai-projects
    You can access projects in your docker container, but also in the parent wsl.

The prod version, main branch, of the projects are in this volume
    /opt/ai-prod:/home/node/ai-prod

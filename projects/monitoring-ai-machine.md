# AI Machine Monitoring System

## Project Location
- **Path:** `/home/node/ai-projects/monitoring-ai-machine/`
- **GitHub:** https://github.com/Maison-Desjardins-de-Gore/monitoring-ai-machine

## Purpose
Monitoring system for AI machine that runs in WSL parent environment (not in Docker containers).

## Features
- GPU usage monitoring (nvidia-smi)
- VRAM usage monitoring
- Ollama process tracking
- CPU/RAM usage
- Docker container status
- Telegram notifications every 10 minutes

## Configuration
- Chat ID: `-1003796017691` (log channel)
- Bot token: To be configured in `config.env`

## Installation
1. Add bot token to `/home/node/ai-projects/monitoring-ai-machine/config.env`
2. Make script executable: `chmod +x /home/node/ai-projects/monitoring-ai-machine/monitor.sh`
3. Install cron job: `*/10 * * * * /home/node/ai-projects/monitoring-ai-machine/monitor.sh`
4. Test monitoring

## Status
- ✅ Script created in ai-projects
- ✅ GitHub repository created
- ✅ SSH configured
- ⏳ Bot token configuration pending
- ⏳ Cron job installation pending

## Notes
- Code is in `ai-projects/monitoring-ai-machine/`
- This file is in `ai-memory/projects/` for memory/notes

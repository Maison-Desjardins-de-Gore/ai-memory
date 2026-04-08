# 🧠 Mémoire AI - Zenith

Système de mémoire persistante pour l'IA Clara sur la machine Zenith.

## 🚀 Démarrage Rapide

```bash
# 1. Vérifier l'accès
ls /home/node/ai-memory/

# 2. Voir les informations machine
cat /home/node/ai-memory/data/machine-discovery.json
cat /home/node/ai-memory/memory/02-machines/Zenith.md
```

## 📁 Structure du Projet

```
ai-memory/
├── memory/
│   ├── 01-daily/         # Notes journalières (YYYY-MM-DD.md)
│   ├── 02-machines/      # Informations machines
│   │   └── Zenith.md     # Configuration machine actuelle
│   ├── channels/         # Résumés de contexte par canal
│   │   └── [nom-canal]/
│   │       └── YYMMDD_YYMMDD_HHmm.md
│   └── projects/         # Notes par projet
│       └── [nom-projet]/
│           └── YYMMDD_YYMMDD_HHmm.md
├── data/
│   └── machine-discovery.json # Cache machine
├── scripts/
│   └── INSTRUCTIONS-IA.md # Guide pour nouvelles IA
└── README.md             # Ce fichier
```

## 📝 Utilisation

### 📅 1. Notes Journalières (Daily Notes)
**But:** Documenter ton activité quotidienne, réflexions générales, et tâches.
**Quand:** Chaque jour, automatiquement.
**Où:** `/home/node/ai-memory/memory/01-daily/YYYY-MM-DD.md`

```bash
# Créer une note pour aujourd'hui
vim /home/node/ai-memory/memory/01-daily/$(date +%Y-%m-%d).md
```

### 📊 2. Canaux (Channels)
**But:** Sauvegarder un résumé de contexte pour un canal spécifique quand tu approches la limite de tokens (28k).
**Quand:** Quand tu approches la limite de contexte pour un canal.
**Où:** `/home/node/ai-memory/memory/channels/[nom-canal]/YYYYMMDD_YYYYMMDD_HHmm.md`

```bash
# Créer un résumé de canal
vim /home/node/ai-memory/memory/channels/[nom-canal]/20260320_20260403_17h40.md
```

### 📁 3. Projets
**But:** Suivre un projet spécifique sur une période donnée.
**Quand:** Quand tu travailles sur un projet spécifique.
**Où:** `/home/node/ai-memory/memory/projects/[nom-projet]/YYYYMMDD_YYYYMMDD_HHmm.md`

```bash
# Créer un suivi de projet
vim /home/node/ai-memory/memory/projects/[nom-projet]/20260320_20260403_17h40.md
```

### 🖥️ 4. Informations Machine
**But:** Voir les spécifications de la machine.
**Où:** `/home/node/ai-memory/memory/02-machines/Zenith.md`

```bash
cat /home/node/ai-memory/memory/02-machines/Zenith.md
```

## 🎯 Distinction entre les types de notes

| Type | Quand utiliser | Durée | Objectif |
|------|--------------|-------|----------|
| **Notes journalières** | Chaque jour | 1 jour | Activité générale, réflexions |
| **Channels** | Quand limite de tokens | Période variable | Sauvegarder contexte d'un canal |
| **Projects** | Quand travail sur un projet | Période variable | Suivi de projet spécifique |

## 🔄 Sync Git

Pour synchroniser avec GitHub:
```bash
cd /home/node/ai-memory
git add .
git commit -m "Description des modifications"
git push origin main
```

## 🛠️ Variables d'Environnement

| Variable | Description | Exemple |
|------|----|-----------|
| `HOST_MACHINE_NAME` | Nom de la machine | Zenith |
| `AI_MEMORY_PATH` | Chemin vers le repo | /home/node/ai-memory |
| `GITHUB_ORGANIZATION` | Org GitHub | Maison-Desjardins-de-Gore |
| `GIT_AI_MEMORY_REPOSITORY` | Repo GitHub | ai-memory |
| `GITHUB_TOKEN` | Token GitHub | ghp_xxxxx |

## 📞 Support

**Me contacter en cas de besoin d'outil dans ton conteneur.**

- **Telegram:** [@SeigneurDeGore](https://t.me/SeigneurDeGore)
- **GitHub:** [Maison-Desjardins-de-Gore](https://github.com/Maison-Desjardins-de-Gore)

---
*Développé pour Clara - Machine Zenith*
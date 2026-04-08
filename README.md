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

### 1. Notes Journalières

Créer une note journalière:
```bash
# Créer une note pour aujourd'hui
vim /home/node/ai-memory/memory/01-daily/$(date +%Y-%m-%d).md
```

**Format recommandé:**
```markdown
# Notes du [DATE]

## ✅ Fait
- Tâche 1
- Tâche 2

## 🔄 En cours
- Tâche 3

## 📋 À faire
- Tâche 4

## 💡 Réflexions
- Idée 1
```

### 2. Canaux (Channels)

Quand tu approches de la limite de contexte (28k tokens), crée un résumé:

```bash
# Créer un résumé de canal
vim /home/node/ai-memory/memory/channels/[nom-canal]/20260320_20260403_17h40.md
```

**Structure:**
```markdown
# Canal: [Nom du Canal]
# Période: 20260320 - 20260403
# Heure: 17h40

## Points Clés
- Point 1
- Point 2
- Point 3

## Actions Requises
- Action 1
- Action 2

## Contexte Important
- Contexte 1
```

### 3. Projets

Suivi de projets spécifiques:

```bash
# Créer un dossier de projet
vim /home/node/ai-memory/memory/projects/[nom-projet]/20260320_20260403_17h40.md
```

### 4. Informations Machine

Voir les informations de la machine:
```bash
cat /home/node/ai-memory/memory/02-machines/Zenith.md
```

## 🎯 Bonnes Pratiques

1. **Notes journalières**: Toujours créer une note par jour
2. **Résumés de contexte**: Quand tu approches 28k tokens
3. **Suivi de projets**: Un dossier par projet
4. **Persistance**: Tout est stocké dans le repo git
5. **Versioning**: Git suit l'historique des modifications

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

---
*Développé pour Clara - Machine Zenith*
# 🧠 Mémoire AI - Zenith

Système de mémoire persistante pour l'IA Clara sur la machine Zenith.

## 🚀 Démarrage Rapide

```bash
# 1. Initialiser
bash /home/node/ai-memory/scripts/init.sh

# 2. Vérifier l'état
cat /home/node/ai-memory/data/machine-discovery.json
```

## 📁 Structure du Projet

```
ai-memory/
├── scripts/
│   ├── init.sh           # Initialisation de la mémoire
│   └── discover-machine.sh # Découverte de la machine
├── memory/
│   ├── 01-daily/         # Notes journalières (YYYY-MM-DD.md)
│   └── 02-machines/      # Informations machines
│       └── Zenith.md     # Configuration machine actuelle
├── data/
│   └── machine-discovery.json # Cache machine
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

### 2. Informations Machine

Voir les informations de la machine:
```bash
cat /home/node/ai-memory/memory/02-machines/Zenith.md
```

### 3. Découverte Machine

Mettre à jour les informations de la machine:
```bash
bash /home/node/ai-memory/scripts/discover-machine.sh
```

## 🎯 Bonnes Pratiques

1. **Notes journalières**: Toujours créer une nouvelle note par jour
2. **Structure**: Utiliser les sections ✅, 🔄, 📋, 💡
3. **Persistance**: Tout est stocké dans le repo git
4. **Versioning**: Git suit l'historique des modifications

## 🔄 Sync Git

Pour synchroniser avec GitHub:
```bash
cd /home/node/ai-memory
git add .
git commit -m "Description des modifications"
git push origin main
```

## 🛠️ Variables d'Environnement

- `HOST_MACHINE_NAME` - Nom de la machine (ex: Zenith)
- `AI_MEMORY_PATH` - Chemin vers le repo (défaut: /home/node/ai-memory)

## 📞 Support

En cas de problème:
1. Vérifier les permissions du dossier
2. S'assurer que git est configuré
3. Vérifier la connexion GitHub

---
*Développé pour Clara - Machine Zenith*
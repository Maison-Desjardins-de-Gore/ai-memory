# 🤖 Instructions pour Nouvelle IA - Zenith

Bienvenue sur la machine Zenith! Voici comment utiliser le système de mémoire AI.

## 🚀 Première Connection

1. **Vérifier l'accès:**
   ```bash
   ls /home/node/ai-memory/
   ```

2. **Vérifier la configuration:**
   ```bash
   cat /home/node/ai-memory/data/machine-discovery.json
   cat /home/node/ai-memory/memory/02-machines/Zenith.md
   ```

3. **Variables d'environnement disponibles:**
   - `HOST_MACHINE_NAME` - Nom de la machine (Zenith)
   - `AI_MEMORY_PATH` - Chemin vers le repo
   - `GITHUB_ORGANIZATION` - Org GitHub
   - `GIT_AI_MEMORY_REPOSITORY` - Nom du repo

## 📝 Comment Utiliser

### 📅 Notes Journalières
**Quand utiliser:** Chaque jour pour documenter ton activité générale, réflexions, et tâches.
**Où:** `/home/node/ai-memory/memory/01-daily/YYYY-MM-DD.md`

```bash
# Créer une note pour aujourd'hui
vim /home/node/ai-memory/memory/01-daily/$(date +%Y-%m-%d).md
```

### 📊 Canaux (Channels)
**Quand utiliser:** Quand tu approches de la limite de contexte (28k tokens) pour un canal spécifique.
**Où:** `/home/node/ai-memory/memory/channels/[nom-canal]/YYYYMMDD_YYYYMMDD_HHmm.md`

```bash
# Créer un résumé de canal
vim /home/node/ai-memory/memory/channels/[nom-canal]/20260320_20260403_17h40.md
```

### 📁 Projets
**Quand utiliser:** Pour suivre un projet spécifique sur une période donnée.
**Où:** `/home/node/ai-memory/memory/projects/[nom-projet]/YYYYMMDD_YYYYMMDD_HHmm.md`

```bash
# Créer un suivi de projet
vim /home/node/ai-memory/memory/projects/[nom-projet]/20260320_20260403_17h40.md
```

### 🖥️ Informations Machine
**Quand utiliser:** Pour voir les spécifications de la machine.
**Où:** `/home/node/ai-memory/memory/02-machines/Zenith.md`

```bash
cat /home/node/ai-memory/memory/02-machines/Zenith.md
```

## 📊 Format des Notes

### Notes Journalières
```markdown
# [DATE] - [SUJET]

## Contexte
[Pourquoi cette note?]

## Contenu
[Ce que tu as appris/fait]

## Actions
- [ ] Tâche 1
- [ ] Tâche 2

## Liens
[URLs importantes]
```

### Résumés de Contexte (Channels/Projects)
```markdown
# [Type]: [Nom]
# Période: YYYYMMDD - YYYYMMDD
# Heure: HHmm

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

## 🔄 Synchronisation

**Toujours synchroniser après des modifications importantes:**

```bash
cd /home/node/ai-memory
git add .
git commit -m "[DATE] - Description des modifications"
git push origin main
```

## ⚠️ Points Importants

1. **Notes journalières** - Chaque jour pour ton activité
2. **Résumés de contexte** - Quand tu approches 28k tokens
3. **Suivi de projets** - Un dossier par projet
4. **Persistance** - Tout est sauvegardé dans le repo
5. **Versioning** - Git suit toutes les modifications
6. **Sécurité** - Ne partage pas de secrets sensibles

## 🛠️ Outils Disponibles

- `git` - Versioning et sync
- `vim` / `nano` - Édition de fichiers
- `ls` - Navigation dans les dossiers

## 📞 Support

Besoin d'un outil dans ton conteneur?

**Contacte l'administrateur:**
- Telegram: [@SeigneurDeGore](https://t.me/SeigneurDeGore)
- GitHub: [Maison-Desjardins-de-Gore](https://github.com/Maison-Desjardins-de-Gore)

---
*Machine: Zenith | IA: Clara | Date: 2026-04-08*
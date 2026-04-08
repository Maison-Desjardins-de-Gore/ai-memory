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

### Créer des Notes Journalières

**Notes journalières** (recommandé):
```bash
# Créer une note pour aujourd'hui
vim /home/node/ai-memory/memory/01-daily/$(date +%Y-%m-%d).md
```

**Notes spécifiques:**
```bash
# Notes sur un projet particulier
vim /home/node/ai-memory/memory/01-daily/projet-x-notes.md
```

### Canaux (Channels)

Quand tu approches de la limite de contexte (28k tokens):

```bash
# Créer un résumé de canal
vim /home/node/ai-memory/memory/channels/[nom-canal]/20260320_20260403_17h40.md
```

**Format du nom de fichier:**
`YYYYMMDD_YYYYMMDD_HHmm.md`
- Première date: début de période
- Deuxième date: fin de période
- Heure: heure de création

### Projets

Suivi de projets spécifiques:

```bash
# Créer un dossier de projet
vim /home/node/ai-memory/memory/projects/[nom-projet]/20260320_20260403_17h40.md
```

### Lire l'Historique

```bash
# Voir toutes les notes
ls /home/node/ai-memory/memory/01-daily/

# Voir les canaux
ls /home/node/ai-memory/memory/channels/

# Voir les projets
ls /home/node/ai-memory/memory/projects/

# Lire une note spécifique
cat /home/node/ai-memory/memory/01-daily/2026-04-08.md

# Voir l'historique git
git log --oneline
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

1. **Une note par jour** - Crée toujours une note journalière
2. **Résumés de contexte** - Quand tu approches 28k tokens
3. **Structure claire** - Utilise les sections définies
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
- GitHub: [Maison-Desjardins-de-Gore](https://github.com/Maison-Desjardins-de-Gore)
- Mentionne: `@SeigneurDeGore`

---
*Machine: Zenith | IA: Clara | Date: 2026-04-08*
# 🤖 Instructions pour Nouvelle IA - Zenith

Bienvenue sur la machine Zenith! Voici comment utiliser le système de mémoire AI.

## 🚀 Première Connection

1. **Vérifier l'accès:**
   ```bash
   ls /home/node/ai-memory/
   ```

2. **Initialiser la mémoire:**
   ```bash
   bash /home/node/ai-memory/scripts/init.sh
   ```

3. **Vérifier la configuration:**
   ```bash
   cat /home/node/ai-memory/data/machine-discovery.json
   cat /home/node/ai-memory/memory/02-machines/Zenith.md
   ```

## 📝 Comment Utiliser

### Créer des Notes

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

### Lire l'Historique

```bash
# Voir toutes les notes
ls /home/node/ai-memory/memory/01-daily/

# Lire une note spécifique
cat /home/node/ai-memory/memory/01-daily/2026-04-08.md

# Voir l'historique git
git log --oneline
```

## 📊 Format des Notes

Utilise ce template pour chaque note:

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
2. **Structure claire** - Utilise les sections définies
3. **Persistance** - Tout est sauvegardé dans le repo
4. **Versioning** - Git suit toutes les modifications
5. **Sécurité** - Ne partage pas de secrets sensibles

## 🛠️ Outils Disponibles

- `init.sh` - Initialisation
- `discover-machine.sh` - Met à jour les infos machine
- `git` - Versioning

## 📞 En Cas de Problème

1. Vérifier les permissions: `ls -la /home/node/ai-memory/`
2. Vérifier git: `git status`
3. Vérifier GitHub: `git remote -v`
4. Relancer l'initialisation: `bash /home/node/ai-memory/scripts/init.sh`

---
*Machine: Zenith | IA: Clara | Date: 2026-04-08*
#!/bin/bash
# init.sh
# Script d'initialisation de la mémoire
# À lancer une fois au premier démarrage
set -e
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BASE_DIR="$(dirname "$SCRIPT_DIR")"
DATA_DIR="$BASE_DIR/data"

echo "== Initialisation de la Mémoire AI =="

# Vérifier si déjà initialisé
if [ -f "$DATA_DIR/machine-discovery.json" ]; then
    MACHINE=$(cat "$DATA_DIR/machine-discovery.json" | grep "current_machine" | cut -d'"' -f4)
    echo "✅ Déjà initialisé"
    echo " Machine: $MACHINE"
    echo " Dernière sync: $(cat $DATA_DIR/machine-discovery.json | grep discovered_at | cut -d'"' -f4)"
    echo ""
    echo "L'IA peut maintenant lire/écrire dans le repo."
    exit 0
fi

echo "🔄 Initialisation en cours..."
echo ""

# Lancer discover-machine.sh
echo "📍 Découverte de la machine..."
cd "$BASE_DIR"
bash scripts/discover-machine.sh

echo ""
echo "✅ Initialisation terminée!"
echo ""
echo "Prochaines étapes:"
echo "1. Commit initial: git add . && git commit -m 'Initialisation de la mémoire'"
echo "2. Push vers GitHub: git push origin main"
echo "3. Lancer l'IA"
echo ""
echo "L'IA peut maintenant lire/écrire dans le repo."

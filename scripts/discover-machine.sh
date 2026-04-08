#!/bin/bash
# discover-machine.sh
# Décrit la machine courante et crée le fichier de configuration
set -e
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BASE_DIR="$(dirname "$SCRIPT_DIR")"
MEMORY_DIR="$BASE_DIR/memory"
DATA_DIR="$BASE_DIR/data"

# Déterminer le nom de la machine
# Priorité: variable d'environnement HOST_MACHINE_NAME > hostname
if [ -n "$HOST_MACHINE_NAME" ]; then
    MACHINE_NAME="$HOST_MACHINE_NAME"
else
    MACHINE_NAME=$(hostname | tr '[:upper:]' '[:lower:]' | tr -cd '[:alnum:]-')
fi

# Créer le fichier de la machine s'il n'existe pas
MACHINE_FILE="$MEMORY_DIR/02-machines/${MACHINE_NAME}.md"
if [ ! -f "$MACHINE_FILE" ]; then
    echo "# Machine: $MACHINE_NAME" > "$MACHINE_FILE"
    echo "" >> "$MACHINE_FILE"
    echo "## Specs" >> "$MACHINE_FILE"
    echo "- OS: $(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '\"')" >> "$MACHINE_FILE"
    echo "- Hostname: $(hostname)" >> "$MACHINE_FILE"
    echo "- Nom configuré: $MACHINE_NAME" >> "$MACHINE_FILE"
    echo "- Created: $(date -Iseconds)" >> "$MACHINE_FILE"
    echo "" >> "$MACHINE_FILE"
    echo "## Services" >> "$MACHINE_FILE"
    echo "- OpenClaw Gateway: 127.0.0.1:18789" >> "$MACHINE_FILE"
    echo "- Ollama: 127.0.0.1:11434" >> "$MACHINE_FILE"
    echo "" >> "$MACHINE_FILE"
    echo "## Dernière sync: $(date -Iseconds)" >> "$MACHINE_FILE"
    echo "Fichier machine créé: $MACHINE_FILE"
else
    echo "Fichier machine existe déjà: $MACHINE_FILE"
fi

# Mettre à jour le cache de découverte
cat > "$DATA_DIR/machine-discovery.json" << EOF
{
 "current_machine": "$MACHINE_NAME",
 "discovered_at": "$(date -Iseconds)",
 "hostname": "$(hostname)",
 "os": "$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '\"')",
 "configured_name": "${HOST_MACHINE_NAME:-not_set}"
}
EOF
echo "Cache mis à jour: $DATA_DIR/machine-discovery.json"
echo "Machine courante: $MACHINE_NAME"

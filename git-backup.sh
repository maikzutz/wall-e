#!/bin/bash
REPO_DIR="/home/maik/docker-stack"

cd "$REPO_DIR" || exit 1

if [ -n "$(git status --porcelain)" ]; then
    echo "[$(date +'%Y-%m-%d %H:%M:%S')] Änderungen auf wall-e erkannt. Erstelle Backup..."
    git add .
    git commit -m "Auto-Backup Configs: $(date +'%Y-%m-%d %H:%M')"
    git push origin main
else
    echo "[$(date +'%Y-%m-%d %H:%M:%S')] Keine Änderungen vorhanden."
fi

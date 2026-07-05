#!/usr/bin/env bash
set -euo pipefail

SRC="$HOME/projects"
DEST="$HOME/backups"
TS=$(date +"%Y%m%d-%H%M%S")
DEST_DIR="$DEST/backup-$TS"

mkdir -p "$DEST_DIR"
rsync -a --delete --exclude='.cache' "$SRC/" "$DEST_DIR/"

echo "Backup successful: $DEST_DIR"

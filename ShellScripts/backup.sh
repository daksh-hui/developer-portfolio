#!/bin/bash

echo "Starting Backup..."

SOURCE="test_notes"
DEST="backup"

mkdir -p "$SOURCE"
mkdir -p "$DEST"

echo "My first backup file" > "$SOURCE/notes.txt"

cp -r "$SOURCE" "$DEST/"

echo "Backup completed successfully!"
echo "Backup saved inside backup folder."

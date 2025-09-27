#!/usr/bin/env bash
set -euo pipefail

# Download winPEASx64.exe into the expected build path.
# This avoids committing vendor binaries that can trigger GitHub push protection.

TARGET_DIR="kali-config/common/includes.chroot/opt/4rji/bin"
TARGET_FILE="$TARGET_DIR/winPEASx64.exe"
URL="https://github.com/carlospolop/PEASS-ng/releases/latest/download/winPEASx64.exe"

mkdir -p "$TARGET_DIR"
echo "Downloading winPEASx64.exe ..."
curl -fsSL -o "$TARGET_FILE" "$URL"
echo "Saved to $TARGET_FILE"


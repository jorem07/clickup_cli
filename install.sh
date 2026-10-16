#!/usr/bin/env bash
set -euo pipefail
DEST="${PREFIX:-$HOME/.local}/bin"
CFG="${XDG_CONFIG_HOME:-$HOME/.config}/clickup-cli"
mkdir -p "$DEST" "$CFG"
install -m 755 "$(dirname "$0")/bin/clickup" "$DEST/clickup"
if [[ ! -f "$CFG/config" ]]; then
  install -m 600 "$(dirname "$0")/config.example" "$CFG/config"
  echo "Created $CFG/config - edit it and add your token."
fi
echo "Installed to $DEST/clickup (make sure $DEST is in your PATH)"

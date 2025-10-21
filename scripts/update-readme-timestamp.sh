#!/usr/bin/env bash
# Kurz: Aktualisiert die "Last updated"-Zeile in README.md basierend auf aktuellem Datum.
set -euo pipefail
ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
README="$ROOT_DIR/README.md"
if [ ! -f "$README" ]; then
  echo "README.md nicht gefunden: $README"
  exit 1
fi
NOW="$(date -u +'%Y-%m-%d %H:%M UTC')"
TMP="$(mktemp)"
awk -v d="$NOW" '
  BEGIN{found=0}
  /^Last updated:/ { print "Last updated: " d; found=1; next }
  { print }
  END{ if(!found) print "\nLast updated: " d }
' "$README" > "$TMP"
mv "$TMP" "$README"
echo "README.md aktualisiert: Last updated: $NOW"

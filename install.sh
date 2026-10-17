#!/bin/bash
# Builds Sleeve and installs it in /Applications, then opens it.
# Its self-updates replace the copy installed here.
# Sleeve has to live in /Applications on macOS 27: MenuBarAgent only keeps an app's
# own icon on screen under a native hiding restriction when the app is installed there.

set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"
"$ROOT/build.sh" release

osascript -e 'tell application id "com.spindle.sleeve" to quit' >/dev/null 2>&1 || true
sleep 1
pkill -x Sleeve 2>/dev/null || true

rm -rf "/Applications/Sleeve.app"
/usr/bin/ditto "$ROOT/build/Sleeve.app" "/Applications/Sleeve.app"
echo "Installed /Applications/Sleeve.app"
open "/Applications/Sleeve.app"

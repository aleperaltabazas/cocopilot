#!/usr/bin/env bash
set -euo pipefail

if [ -d /mnt/source ] && [ -n "$(ls /mnt/source 2>/dev/null)" ]; then
    mkdir -p /workspace
    cp -r /mnt/source/. /workspace/
fi

cd /workspace
exec copilot "$@"

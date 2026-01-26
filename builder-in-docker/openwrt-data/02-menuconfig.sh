#!/bin/bash
set -euo pipefail

echo "02-menuconfig.sh start"

cd builder
export GITHUB_WORKSPACE="$(pwd)"
cd openwrt
export OPENWRT_PATH="$(pwd)"

make menuconfig && ( rm -f "$OPENWRT_PATH/flags-downloaded-packages" || true )

echo "02-menuconfig.sh success"

#!/bin/bash
set -euo pipefail

echo "02-menuconfig.sh start"

export SHARED_ENV=./.env
. "$SHARED_ENV"

cd "$OPENWRT_PATH"

make menuconfig && ( rm -f "$OPENWRT_PATH/flags-downloaded-packages" || true )

echo "02-menuconfig.sh success"

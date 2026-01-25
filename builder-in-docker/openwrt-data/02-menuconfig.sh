#!/bin/bash
set -euo pipefail

cd builder
export GITHUB_WORKSPACE="$(pwd)"
cd openwrt
export OPENWRT_PATH="$(pwd)"

make menuconfig

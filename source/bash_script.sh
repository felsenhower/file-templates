#!/usr/bin/env bash

set -euo pipefail
IFS=$'\n\t'

[ "${SHELLCHECK:-0}" == "1" ] && shellcheck "$0"

function cleanup() {
    true
}

trap cleanup EXIT

echo 'Hello World!'

# ...

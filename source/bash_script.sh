#!/usr/bin/env bash

set -euo pipefail
IFS=$'\n\t'

shellcheck "$0"

function cleanup() {
    true
}

trap cleanup EXIT

echo 'Hello World!'

# ...

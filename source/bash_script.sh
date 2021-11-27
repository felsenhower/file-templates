#!/usr/bin/env bash

set -euo pipefail
IFS=$'\n\t'

shellcheck "$0"

echo 'Hello World!'

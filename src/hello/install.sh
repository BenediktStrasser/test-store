#!/usr/bin/env bash
# Install script for the "hello" devcontainer feature.
# Devcontainer features receive each option as an uppercased environment variable.
set -euo pipefail

echo "${GREETING:-Hello, world!}"

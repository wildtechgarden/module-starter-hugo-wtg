#!/bin/bash
# cspell:ignore modstarter

set -e
set -o pipefail

rm -rf public

export BASEURL="https://www.module-starter.wtg-demos.ca/"
export HUGO_RESOURCEDIR="$(pwd)"/resources
export SITECONFIG="$(pwd)"/tests/config/test-config.toml
export TARGET="$(pwd)"/public
export CURDIR="$(pwd)"

cd tests/config && hugo --gc --minify -b $BASEURL --source "$(pwd)" --destination "${TARGET}" --config "${SITECONFIG}"
cd "${CURDIR}"
rclone sync --checksum --progress public/ wtg-modstarter:./

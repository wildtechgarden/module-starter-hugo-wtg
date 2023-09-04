#!/bin/bash
# cspell:ignore modstarter

set -e
set -o pipefail

rm -rf public

export BASEURL="https://www.module-starter.wtg-demos.ca/"
export HUGO_RESOURCEDIR="$(pwd)"/resources

cd tests/config && hugo --gc --minify -b $BASEURL --source "$(pwd)" --destination "$(pwd)"/public --config "$(pwd)"/tests/config/hugo.toml
rclone sync --progress public/ wtg-modstarter:./

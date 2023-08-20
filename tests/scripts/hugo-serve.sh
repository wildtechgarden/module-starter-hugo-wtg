#!/bin/bash

if [ -z "${HUGO_CACHEDIR}" ]; then
	HUGO_CACHEDIR="$(pwd)/hugo-cache"
fi

export HUGO_RESOURCEDIR="$(pwd)/resources"
hugo  serve --buildDrafts --buildFuture --source $(pwd) --environment "development" --config "$(pwd)"/tests/config/hugo.toml --destination $(pwd)/public

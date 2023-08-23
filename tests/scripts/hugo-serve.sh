#!/bin/bash

if [ -z "${HUGO_CACHEDIR}" ]; then
	HUGO_CACHEDIR="$(pwd)/hugo-cache"
fi

export SITEROOT="$(pwd)"
export SITECONFIG="$(pwd)"/tests/config/hugo.toml

export HUGO_RESOURCEDIR="$(pwd)/resources"
cd tests/config && hugo serve --buildDrafts --buildFuture --source "${SITEROOT}" --environment "development" --config "${SITECONFIG}"

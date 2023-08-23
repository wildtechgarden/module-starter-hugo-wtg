#!/bin/bash

if [ -z "${HUGO_CACHEDIR}" ]; then
	HUGO_CACHEDIR="$(pwd)/hugo-cache"
fi

export HUGO_MODULE_REPLACEMENTS="github.com/wildtechgarden/minimal-test-theme-hugo-wtg -> ../../minimal-test-theme-hugo-wtg, github.com/wildtechgarden/demo-test-site-hugo-wtg -> ../../demo-test-site-hugo-wtg, github.com/wildtechgarden/module-starter-hugo-wtg -> .."
export HUGO_RESOURCEDIR="$(pwd)/resources"
export SITEROOT="$(pwd)"
export SITECONFIG="$(pwd)"/tests/config/hugo.toml
cd tests/config && hugo  serve --buildDrafts --buildFuture --source "${SITEROOT}" --environment "development" --config "${SITECONFIG}"

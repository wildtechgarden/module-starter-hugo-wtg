$Env:HUGO_RESOURCEDIR="$PWD\resources"
hugo.exe  serve --buildDrafts --buildFuture --environment "development" --config '$PWD\tests\config\test-config.toml'

#! /bin/sh
set -e
mdspell -n -a -t  docs/**/*.md -d dictionary/en_US-large
find . -type f -name '*.md' ! -path '/docs/**/*' | xargs -L1 markdown-link-check 

mkdocs serve
